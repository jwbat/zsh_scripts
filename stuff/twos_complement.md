# What is Two's Complement?

Two's complement is a mathematical operation on binary numbers, as well as a binary signed number representation based on this operation. Its wide use in computing makes it the most important example of a radix complement. It is used to represent signed integers in most modern computers.

In the two's complement system, positive integers are represented as regular binary numbers. Negative integers are represented by the two's complement of the absolute value of the number.

# How Does It Work?

For positive integers and zero, the two's complement representation is the same as the standard binary representation. For example, the two's complement representation of +5 in 8-bit form is `00000101`.

For negative integers, the process is a bit more involved:

1. **Find the binary representation of the absolute value**: For \(-5\), the absolute value is \(5\), and its 8-bit binary representation is `00000101`.
2. **Invert the bits**: Flip all the bits (0 becomes 1 and 1 becomes 0). For `00000101`, the inverted bits give `11111010`.
3. **Add 1**: Add 1 to the result. `11111010 + 1` becomes `11111011`.

So, the 8-bit two's complement of \(-5\) is `11111011`.

# Let's Work Through a Simple Case: \(-3\)

To find the 8-bit two's complement representation of \(-3\):

1. **Find the binary representation of the absolute value**: The absolute value of \(-3\) is \(3\), and its 8-bit binary representation is `00000011`.
2. **Invert the bits**: Inverting the bits gives us `11111100`.
3. **Add 1**: Adding 1 gives us `11111101`.

Let's calculate it.

The 8-bit Two's Complement representation of \(-3\) is \(11111101\).

# Convert signed byte, `b'\xfb'`, back into its decimal representation

1. **Interpret the Byte as Unsigned**: 
First, convert the byte to its unsigned decimal value.
    - `b'\xfb'` in hexadecimal is `FB`.
    - In binary, `FB` is `1111 1011`.
    - The unsigned decimal value of `FB` is \( 15 \times 16 + 11 = 241 \).

2. **Check the Sign Bit**: In an 8-bit signed integer, the most significant bit (MSB) indicates the sign:
    - If the MSB is `0`, the value is positive.
    - If the MSB is `1`, the value is negative.

3. **Convert from Unsigned to Signed**:
    - Since the MSB of `1111 1011` is `1`, it indicates a negative value.
    - To convert this unsigned value to a signed value, we subtract \(2^8\) (256) from it.

\[ \text{Signed Value} = \text{Unsigned Value} - 256 \]

4. **Calculate the Signed Value**:
    - For `b'\xfb'`:
    - Unsigned value is 251.
    - Signed value: \( 251 - 256 = -5 \).

So, `b'\xfb'` corresponds to `-5` in decimal.

### Python Implementation
You can use Python's `int.from_bytes` method with the `signed` parameter to convert bytes directly to a signed integer:

```python
# The byte representation
byte_value = b'\xfb'

# Convert to signed integer
signed_value = int.from_bytes(byte_value, byteorder='little', signed=True)

print(signed_value)  # Output: -5
```

Here’s a breakdown of the Python code:
- `int.from_bytes(byte_value, byteorder='little', signed=True)`:
    - `byte_value` is the byte string `b'\xfb'`.
    - `byteorder='little'` specifies the byte order (endianness). For a single byte, this doesn't matter.
    - `signed=True` indicates that the byte should be interpreted as a signed integer.

This method handles the two's complement conversion for you, resulting in the correct signed integer value `-5`.
