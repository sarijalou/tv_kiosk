from jinja2 import Template
import datetime 
import subprocess



def render_invoice(fisch_product,result):
    mylist = []
    
    # Define the invoice data (this can come from a database, API, or any other source)
    print(fisch_product,result)
    current_datetime = datetime.datetime.now()
    current_datetime = str(current_datetime)[0:19]
    for i in fisch_product:
        my_dict = {'name': i[1], 'quantity': i[0], 'unit_price': i[2]}
        mylist.append(my_dict)
    
    invoice_data = {
        'invoice_number': 'INV-2023-001',
        'date': current_datetime,
        'items': mylist,
        'image_path': result[0][1],  # Replace with the actual path or URL of your image
        'client_name':result[0][0],
        'adress':result[0][2],
        'phone':result[0][3],
        'mail':result[0][4]
    }

    # Calculate the total amount and add the item number to each item dictionary
    total_amount = 0
    for idx, item in enumerate(invoice_data['items'], start=1):
        item['item_number'] = idx
        item['total_price'] = int(item['quantity']) * int(item['unit_price'])
        print(item['total_price'])
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
                                       total_amount=total_amount,
                                       image_path=invoice_data['image_path'],
                                       client_name=invoice_data['client_name'],
                                       adress=invoice_data['adress'],
                                       phone=invoice_data['phone'],
                                       mail=invoice_data['mail']
                                       )

    # Save the rendered invoice to a new file
    with open('invoice_output.html', 'w') as output_file:
        output_file.write(rendered_template)

    filename = "invoice_output.html"
    #function that sends the job to the printer
    # with open(filename, "rb") as f:
    #     data = f.read()
    #     lpr = subprocess.Popen(["/usr/bin/lpr", "-"], stdin=subprocess.PIPE)
    #     lpr.stdin.write(data)
    #     lpr.communicate() # wait for the process to finish

if __name__ == "__main__":
    render_invoice()