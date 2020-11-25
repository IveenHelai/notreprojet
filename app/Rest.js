class Rest
{

        static get(data)
        {
            return $.ajax(
            {

                url:"rest/",
                method: "GET",
                data:data

            });
        }

        static post(data)
        {
            return $.ajax(
            {

                url:"rest/",
                method: "POST",
                data:data

            });
        }

        static put(data)
        {
            return $.ajax(
            {

                url:"rest/",
                method: "PUT",
                data:JSON.stringify(data)

            });
        }

        static delete(data)
        {
            return $.ajax(
            {

                url:"rest/",
                method: "DELETE",
                data:data

            });
        }
        
}