
export function metric(
  device: Record<string, any>,
  metricKey: string,
  options: MetricOptions = {}
): Record<string, any> {
  const namespace = I18N_NAMESPACES[device.modelNumberNormalized.substring(0, 2)];
  const value = device[metricKey];
  const metricConfig = device.config.metrics[metricKey];
  const labelKey = options.labelKey ?? "label";
  const { labelValues, indicatorType } = options ?? {};

  return {
    label: i18n.t(`metrics.${namespace}.${metricKey}.${labelKey}`, labelValues ?? {}),
    unit: i18n.t(`units.${metricConfig.unit}`),
    value: formatNumber(value, { format: metricConfig.format }),
    indicatorType: indicatorType ?? MetricIndicatorType.Plain
  };
}
