use actix_files as fs;
use actix_web::{App, HttpServer, middleware};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let port = 8095;
    let target_folder = "/internal-static";

    println!("Starting HTTP server on port {:?}", &port);

    HttpServer::new(move || {
        App::new()
        .wrap(middleware::Compress::default())
        .service(
            fs::Files::new("/", target_folder).show_files_listing()
        )
    })
    .bind(("0.0.0.0", port))?
    .run()
    .await
}
