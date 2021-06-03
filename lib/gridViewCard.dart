
gridList(String area, String title, String inReturn, List url) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0))
    ),
    height: 200,
    width: categoryWidth / 2.3,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: categoryWidth / 2.3,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: url != null
                    ? Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/no_image.jpg'))
                    : CachedNetworkImage(
                  imageUrl: url[0]??'',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => CircleAvatar(
                    radius: 12.5,
                    backgroundColor: Colors.brown.shade800,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 120.0),
                  ListTile(
                    leading: Container(
                      color: Colors.white,
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xff4B6E82)),
                              borderRadius: BorderRadius.circular(20.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 0.0),
                          child: _variable.textPoppins(
                              area == null ? "Area" : "$area",
                              16.0,
                              Color(0xff4B6E82),
                              FontWeight.w400)),
                    ),
                    trailing: Icon(Icons.favorite_border),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: _variable.textPoppins(
              title == null ? "Offer title" : title,
              16.0,
              Colors.black,
              FontWeight.w500),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Icon(GintaaIcon.arrow_dchat, color: Colors.blueAccent),
              SizedBox(width: 20),
              _variable.textPoppins(
                  inReturn == null ? "Not shared" : inReturn,
                  16.0,
                  Color(0xff4B6E82),
                  FontWeight.w400)
            ],
          ),
        ),
      ],
    ),
  );
}