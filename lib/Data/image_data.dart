class ImageData {
  static List<String> myImageLinks = [
    "https://s3-alpha-sig.figma.com/img/8ae8/8351/d9d8ec2de6a2ad384cd6cc3e473842ef?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lvATBm5vAZ2d9WnLGNe8dIa7kUNsfQviLhofUsr~1IwngwN-udDN85p2bC7849d7VgGX~R3fEI6AVTG1WT~ejO9Lmbu-T9muV0ICXn83cLIF5Ku2PMLn4E5NS7NRaD-JH0M41liXKhFD6~kTU7v0R7p4H4gQ8u29MHFq1EuaHVeyWun7o3kzbuc5uCgCGiqpHn98-~R89nBBX1a4KGD5KUkn7ik22QDDUcrD7woSpPDbgUxQ5IMjAf5EaK7j5OZ3sWiPY2aJMd1RpxTTT0P8cdeMYGJUMYMymfd882Ybg7GVZ8Rjih5gHSw2ZPTLB7XweKD0xRQuZ-zTp05GB6xbjQ__",
    "https://s3-alpha-sig.figma.com/img/b5c9/9297/2ab1f63e0688f30f6c974cf756072cea?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=W-~CL0sTCn2tkgX2XdMafNeZik~V7aDEmjfqeYqE1phGWVlBSn03gUSYewAM~XI22OsGSd-G9EigE5KjM45icOfXThNSmzjGy~CxCFJWHJigT07DhnC2wcuK814aCgP4aP64rUHNMpxxzj27rO8793YHHagex~ckhEj7VQL58yD7yy4dCZTwCn6GbFcCF7GcZqyp6Kx6iYAZMsd4VT6fPSWWLVRW06pU3ZFedhdd9XNfY6qwA-W1Jeu4nsFYba3UMLeGOgUm2hvKsa1L25~K1EmYoKKQTY2TUxF0hCe-lgR2XIdhTQqk45K5OgUGzOEGfTjOT3KuTQmt7IBrkljcrg__",
    "https://s3-alpha-sig.figma.com/img/ee2f/671b/ae1da53eba6aa80eef98a563c436f03e?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fVnNb3dq8hOAbN7hCJGm-3zfI2g6iO4NhXAJuFs2yFa~sw7Wq8e1Gx3p9tYtr~Y6GBR-EYLjle~2KkjXAcUJclwMI0Faye2JoPslB0t79YdxLDiKXt0kzlnIDBZ~ievRfMV9JL8s1gMcRFsMbjt7Qij4YP-nqTnPBvDafQwa-ltVIiNJFGXjv4Yt-9dn~MLkngO0Ckg4a3XguKMyMWm6qAKceu4QG594~NpO6ACZanZZYav9ZpReHVrQ6WdtiJT4bbbD6PQly9iDjSPDRS3jDKSbIFwUCE8xt11MwerjVWpVSkb42Zt7PG8hHbNlpGnrwCwIRapupTYl0SAFoLWldA__",
    "https://s3-alpha-sig.figma.com/img/8139/76db/b9866db0ccb3da6c0a5768688558600a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iw41e3ovTzHD5OAH9t2YFhNqm53k1EkJM3RzzlJpPeWZnOMYN9LCi9n5EP-ZJe8tartf-lejlsXpi-gx90p8VcrWDPD81v09PHejP4g9U58T48-wmczWlSVkXi~Ditz~GTq8zUWv9WckTeobHw4h2fOH9bOIc9TaKpV6l0OZcXCtOraqi4hMW~L8ogpYz7Bza6jcNq3ZV6fFOBLbZhgeFTro6SAJa1ssMUtfrR-2hkfEcJYKns0FRS2HsjpBH6PKYK9Ig9f0QHy1oDqesFa4d4OWh-yW~JL6LPEPjt-YAhsme5sSgSi4GYPQw~Qxclxuv4c6Lc6J2iWgRkttQm9Kvg__",
    "https://s3-alpha-sig.figma.com/img/5ee3/6ab8/855aec6a04658bde0b2950139117bfef?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pG-WF3QwhhwNK7Yp8VaMwJJu97dF96ppVVyMDJ9A2pRCKCBFNBaC4Jx6HW7by3ZUTYcwxUEzlrV9j2-sv3-~izeg1UFGeBvEn1HyqpRc2SIs2lrzS3UiXD2m1nkLR4MQ0DUnG71P0JlP8wHRjrReAQoi5o9DLpdi9Gxpk-e86Ixaqx2Tjt7RfJS8w4Zh6DGy~88iCIcuJoli0vKw3xjgIn13hWLlGDA6FY~ZZhYAqa0uO4Cpy0TI3syERcAK3QpIg6izb54Xw4g5pUqpWFCOu3t8FmqUyW9p4zIVE4VoYfkR~G2gXxaQvbnzeP~PyamnCBl1~fdTrrzj2i2HWOAWdw__",
    "https://s3-alpha-sig.figma.com/img/fc40/a160/93009751f3322ccb89e8c7e7332fd657?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IqxY3faH~AZi~ZsDfxQhyWVaES0klMwN6ryvuWrdpzYrPWhh~CYMgBq9H~9C4gP-DDfQCO64iUB0Y~oIR68zXHJ919jU345X7Qh8mFKBHXwlU54CFJ66J0Lwl-ZQasnlaAmJ9xzynH92N4nu13p2go8AmO8u09Rl8~F8T5atI88R-1c6QQ44GRklvmNBLPIpWC6ictXJOjefu93EEXWkyBDX3-1JObWWoepC881iQaOob-lk7AhGiXjtaDD6suoVcdAuQmgeXwx5pH5opk6nOjp6rdNGw3pweNRpe~iHDI2m14~KEOA9eAjHoXmxJZejfMhMBZDzNGeEJEJmViBtaQ__",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9eFuJyAS3Ef-fza4rasTmWUE_5XHBbeiRAA&s",
    "https://s3-alpha-sig.figma.com/img/8ae8/8351/d9d8ec2de6a2ad384cd6cc3e473842ef?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lvATBm5vAZ2d9WnLGNe8dIa7kUNsfQviLhofUsr~1IwngwN-udDN85p2bC7849d7VgGX~R3fEI6AVTG1WT~ejO9Lmbu-T9muV0ICXn83cLIF5Ku2PMLn4E5NS7NRaD-JH0M41liXKhFD6~kTU7v0R7p4H4gQ8u29MHFq1EuaHVeyWun7o3kzbuc5uCgCGiqpHn98-~R89nBBX1a4KGD5KUkn7ik22QDDUcrD7woSpPDbgUxQ5IMjAf5EaK7j5OZ3sWiPY2aJMd1RpxTTT0P8cdeMYGJUMYMymfd882Ybg7GVZ8Rjih5gHSw2ZPTLB7XweKD0xRQuZ-zTp05GB6xbjQ__",
  ];

  static List<String> imageCategory = [
    "Mood",
    "Aesthetic",
    "Animals",
    "City",
    "Travel",
    "Sky",
    "Road",
    "Flowers"
  ];

  static List<String> titleDescription = [
    "Mood With Nature",
    "Pleased With Aesthetics",
    "Details of Animals",
    "Sky Lines of The City",
    "Travel Amazing Places around the world",
    "Watch the Night Sky",
    "Road Show of Anime",
    "Color of the Flowers",

  ];

  static String subtitleDescription =
    "Elevate your Mood with Aesthetics of Animal's Life and Skylines of the Colorful Cities. Travel amazing places in the world and watch Night Sky for peace, Enjoy RoadShow and beautiful smells of the flowers";

  static String dawnImageLink = "https://s3-alpha-sig.figma.com/img/f4a3/12b8/7bd99804e59439f7e0f27e9f6cf7ebd3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=G0fuYdKRD-V9KSVL7M4s4OPVQBZqSgrkUS2x44M867yHxvk6B-T9qdqNtysgLDQB1L0MbYLLlhA5ddZsr1-Md-Tz8wlULRd1yL9iWBabU6Kv42vP6Z1NYY0W76HEj~lWNXhHqAEU4WhPsSd845mBnj5vkPVtT9ZgcW1kXxplbE3sBih9TT~7IvfUFgrIrVtSW9kNbmNP3ytQfipm2z5ArCBQDBJsB3wAMJt2vEfw~3NFhPVf95kz4dezLDwroSVBBCF8P88AuGh8zO16MskBi-S3xwA2iFv690yn-N3wyw0Bj95VmyLXpdkpBm~lcLDm6YdtleokINVw7xi46mx8gw__";
  static String leavesImageLink = "https://s3-alpha-sig.figma.com/img/d3d4/fda7/97dabb9135a808713597e0ce5441ce5f?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PHSbGSD8zeJJtkgKcv1QqMGz9wQD~dYNmPiJmflKMegG~IPAURgCU67-qazgfY1IkzKh8na3C0LRHM3rHFnnGneQogGpkY7KJHcx2WJdcZp37w~SPjS3rPhYYbS1-mrwlF6bB7NumqTFQBHMvALh7netjfNozgdLWiAxXVajB0OSQnPicPuhNss~khsd5y2O9h2G6lqxRjSGuMb3c5VrLsRGvjbml2nuM8UAKd00HpL6xeeAMty0ohape6DlqT4R1t5wHOdpwHRwYHs48~r2RVW3E2-IWGle57D8Ix70ABzdqxCRd~1Pu5s3IoJgXe7rix08GXFF2yEiIKaHfS7LYw__";
}
