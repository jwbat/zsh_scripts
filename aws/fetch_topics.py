'''
Fetch and print distinct topic strings from AWS IoT Wireless Destinations.
'''
import boto3


def fetch_distinct_topics() -> list[str]:
    session     = boto3.Session()
    client      = session.client('iotwireless')
    topics      = set()
    next_token  = None

    while True:
        request = {}
        if next_token:
            request['NextToken'] = next_token
        page = client.list_destinations(**request)
        for destination in page.get('DestinationList', []):
            topic = destination.get('Expression')
            if topic:
                topics.add(topic)
        next_token = page.get('NextToken')
        if not next_token:
            break
    return sorted(topics)


def main() -> None:
    topics = fetch_distinct_topics()

    if not topics:
        print('No topic strings found in IoT Destinations.')
        return

    for topic in topics:
        print(topic)


if __name__ == '__main__':
    main()
