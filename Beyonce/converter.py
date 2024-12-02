# Define the input and output file paths
input_file = "Beyonce/vbsmeLab7data.txt"  # Replace with your input file name
output_file = "lab7data.mem"  # Replace with your desired output file name

# Open the input file and read its lines
with open(input_file, "r") as infile:
    lines = infile.readlines()

# Open the output file for writing
with open(output_file, "w") as outfile:
    for line in lines:
        # Extract the hexadecimal value using string operations
        if "<=" in line:
            hex_value = line.split("32'h")[1].split(";")[0]
            # Format the value to 8 characters with leading zeros
            formatted_value = hex_value.zfill(8)
            # Write the formatted value to the output file
            outfile.write(formatted_value + "\n")

print(f"Conversion complete. Hexadecimal values written to {output_file}.")

