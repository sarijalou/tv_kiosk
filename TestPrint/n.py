from jinja2 import Template

def render_invoice():
    # Define the invoice data (this can come from a database, API, or any other source)
    invoice_data = {
        'invoice_number': 'INV-2023-001',
        'date': '2023-08-04',
        'items': [
            {'name': 'Item 1', 'quantity': 2, 'unit_price': 10},
            {'name': 'Item 2', 'quantity': 1, 'unit_price': 20},
            {'name': 'Item 3', 'quantity': 3, 'unit_price': 15},
        ],
    }

    # Calculate the total amount and add the item number to each item dictionary
    total_amount = 0
    for idx, item in enumerate(invoice_data['items'], start=1):
        item['item_number'] = idx
        item['total_price'] = item['quantity'] * item['unit_price']
        total_amount += item['total_price']

    # Read the invoice template file
    with open('invoice_template.html', 'r') as template_file:
        template_content = template_file.read()

    # Create a Jinja2 Template object
    template = Template(template_content)

    # Render the template with the invoice data
    rendered_template = template.render(invoice_number=invoice_data['invoice_number'],
                                       date=invoice_data['date'],
                                       items=invoice_data['items'],
                                       total_amount=total_amount)

    # Save the rendered invoice to a new file
    with open('invoice_output.html', 'w') as output_file:
        output_file.write(rendered_template)

if __name__ == "__main__":
    render_invoice()