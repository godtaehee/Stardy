<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/layout.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/style.css">


    <title>Document</title>
</head>
<body>
    <div class="container">

        <%@include file="/layout/header.jsp" %>


        <aside class="aside">
            <h1 class="hide">aside</h1>
        </aside>


        <section class="jumbotron">
            <h1 class="hide">jumbo</h1>
            <div class="jumbotron-text">
                <div class="title-container">
                    <div class="jumbo-title">모각모각 JSP 스터디</div>
                    <div class="jumbo-study-date">
                        <div class="jumbo-icon"></div>
                        <div class="jumbo-date-text">123 일째 스터디 중</div>
                    </div>
                </div>
                <div class="jumbo-menu">
                    <div class="jumbo-button">
                        <div class="invite-icon"></div>
                        <button type="button">초대</button>
                    </div>
                    <div class="jumbo-button">
                        <div class="setting-icon"></div>
                        <button type="button">설정</button>
                    </div>
                </div>
            </div>
        </section>

        <main class="main">
            <h1 class="hide">main</h1>
            <div class="main-menu">
                <div class="main-button">
                    <div class="hot-icon"></div>
                </div>
                <div class="main-button">
                    <div class="new-icon"></div>
                </div>
                <div class="aside-active-btn">
                    <button class="btn btn-show">=</button>
                    <div class="about-study">
                        <div class="about-study-header">About Study</div>
                        <div class="about-main">
                            <div class="about-study-content">모여서 JSP "JSP BOOK"을 공부하는 스터디 입니다. 하루에 JSP 책을 공부하면서 같이 스터디하는 그런 그렇고 그런 스터디입니다. 다들 열심히 잘해봐요 매주 출석확인합니다.</div>
                            <div class="about-study-info">
                                <div class="about-member">
                                    <div class="member-cnt">13</div>
                                    <div class="member-txt">Members</div>
                                </div>
                                <div class="about-posts">
                                    <div class="post-cnt">130</div>
                                    <div class="post-txt">Posts</div>
                                </div>

                            </div>
                            <div class="about-study-create-date">
                                <div class="calender">
                                    <div class="calender-img"></div>
                                    <div class="calender-txt">Created</div>
                                </div>
                                <div class="create-date">2021년 3월 31일</div>
                            </div>
                            <div class="about-study-master">
                                <div class="master-img-container">
                                    <div class="master-img"></div>
                                    <div class="master-txt">스터디 개발자</div>
                                </div>
                                <div class="master-name">왕밤빵</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="write">
                <div class="pencil"></div>
                <input class="write-section" type="text" value="게시글을 작성해주세요.">
            </div>
            <ul class="card-list">
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">아닌데 될텐데 ???</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam, ullam.</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">메이플스토리 에반 1~200 육성법</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aspernatur esse hic laborum quisquam repellendus?</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam, aspernatur atque beatae corporis distinctio dolorem dolores ea eaque earum est, et ex expedita ipsum laboriosam maxime, minima minus nobis numquam pariatur perferendis perspiciatis porro ratione repellat reprehenderit saepe sit soluta! Autem, cupiditate dolor enim illum incidunt itaque laudantium nostrum perferendis perspiciatis placeat qui quibusdam quo repellat rerum soluta temporibus voluptas. Ad corporis dolorem est hic ipsam molestias mollitia necessitatibus quis quisquam, quos similique sit suscipit, voluptate? Exercitationem molestiae possimus sequi vel voluptatem. Accusantium cum dolorem eligendi nam quae quod tenetur! A at, cum dolore doloremque enim est et explicabo facere facilis illo in maiores minus nemo quaerat quos reiciendis rem suscipit. Consequatur enim fuga id ipsum officia rerum temporibus voluptatibus voluptatum? A assumenda cupiditate esse et illo laudantium molestiae nam placeat porro, tempora veritatis voluptatem! Ab accusamus aspernatur beatae commodi deserunt dolor, dolore earum eligendi error esse expedita fugiat id inventore laborum molestiae necessitatibus nihil nisi nobis obcaecati odit optio placeat praesentium quae quaerat quas quis ratione recusandae rerum sequi sit veritatis vero vitae voluptates. Assumenda blanditiis cupiditate delectus dolorum eveniet, maiores natus quasi qui quos repellat tempora tenetur unde. Adipisci cumque dolorem eligendi eos hic inventore laborum, maxime natus nesciunt quia quidem quos sequi veritatis? Adipisci alias animi aspernatur beatae consectetur dolorem dolorum ducimus, ex fuga illo incidunt inventore ipsum laborum, libero maiores maxime nemo odit possimus quidem sapiente sed sequi similique soluta suscipit vitae voluptas voluptate? Alias animi architecto, asperiores at corporis cum dolorem eum excepturi expedita illum impedit, laborum minus nesciunt nihil obcaecati quisquam quos repellendus soluta ut veniam? Ab blanditiis consectetur, cumque hic mollitia odit quia sequi. Aliquid, consequuntur distinctio dolor eligendi error est eum hic incidunt iure maxime modi, numquam praesentium, quaerat quibusdam quo similique sit tempora vero voluptas voluptate. A alias, aliquid architecto, consectetur delectus eligendi error expedita fuga id illo in laborum magnam maxime, minus modi molestiae nemo nesciunt nisi nulla perspiciatis quam sapiente similique temporibus ullam vel vero voluptatem? A aliquid, at dolore eius esse excepturi itaque laudantium neque nisi quae quidem quis repellendus tempore totam unde vitae, voluptates. Alias et excepturi exercitationem ipsum non! At beatae consequuntur cum eligendi eveniet ex exercitationem facilis nemo non officiis omnis quibusdam reprehenderit, sed temporibus totam. Ab ad aliquid animi aperiam architecto blanditiis consequatur dignissimos exercitationem facilis in incidunt labore nulla odit officiis quia reiciendis repellat sequi suscipit velit, veniam. Accusamus aspernatur dolorem ea eaque eius esse est ex excepturi ipsum iste iusto minima minus molestias, mollitia nam nostrum officiis pariatur placeat provident quas ratione reprehenderit rerum temporibus totam voluptas voluptates voluptatum? Ab ad asperiores, exercitationem ipsum natus neque nobis quae? Accusamus adipisci blanditiis cupiditate error eum explicabo labore magnam, minus nobis nulla officia pariatur. Odio, ullam, voluptatem. Illo impedit natus nulla obcaecati praesentium qui reiciendis. Accusantium, debitis delectus dolor dolores error hic natus necessitatibus nulla porro quidem repellat repellendus saepe tenetur veritatis voluptas? Amet, aut deserunt dignissimos dolor dolorum eius impedit in incidunt nobis non omnis, perferendis rem sapiente velit veniam. Aliquam distinctio laboriosam numquam porro quo, sed ut voluptatem? A ab ad aliquid amet aperiam architecto aspernatur at beatae commodi corporis delectus deserunt dolorum earum esse eveniet exercitationem facere hic in iste itaque iure, laudantium magni maiores nisi porro quam qui quidem reprehenderit repudiandae sit soluta sunt tempore tenetur vel vero voluptate voluptatem! Atque blanditiis eos nisi nulla qui repellat sequi ullam vel vitae. Alias animi architecto, aut dolorem dolorum eos eum ipsa iusto minima molestiae nesciunt qui, quis repudiandae saepe sint? Assumenda commodi consequatur corporis cumque deleniti doloremque eaque enim in, incidunt ipsa laborum libero, nesciunt nihil quae qui quo quod recusandae suscipit veniam voluptatibus. Aliquam cupiditate dicta est excepturi iste iusto maxime nemo, odit quo recusandae sed sit ut? Aperiam aut dolore eaque error eveniet illo, in ipsam iure laborum pariatur quibusdam saepe tempora tenetur ullam vel velit voluptate. Aliquid aut consectetur consequatur deserunt distinctio doloribus earum eligendi esse eum fuga hic inventore, ipsum maiores molestiae numquam omnis placeat praesentium quasi, rerum sequi sint sit temporibus? Consequuntur delectus eaque enim minus quas repellat repudiandae tempore temporibus vero voluptates! Beatae consequatur culpa delectus deserunt doloremque, doloribus ducimus ea eaque eligendi esse fuga libero magni maiores numquam, officia omnis quaerat quia quisquam quo saepe tempore ullam vitae? Animi cumque cupiditate ducimus eveniet fugiat hic inventore, ipsum, itaque iure magni molestiae nihil numquam odio officiis perspiciatis provident quaerat, quidem quis reprehenderit sint soluta temporibus vel vero. Amet animi beatae consectetur, cupiditate dolorem eos impedit inventore iusto neque non placeat possimus quam quibusdam quidem reprehenderit unde velit veritatis. Ad adipisci aliquam animi aspernatur at atque, consectetur consequatur, dicta dolor dolorem earum eligendi est excepturi expedita facilis fugiat fugit inventore iure laboriosam laborum, molestias mollitia nesciunt nostrum numquam officia officiis perferendis quaerat qui quia repellendus reprehenderit saepe sed similique sint suscipit tempora vero! Alias aliquam assumenda beatae blanditiis consectetur culpa cumque deleniti distinctio dolor doloremque doloribus ducimus esse incidunt inventore ipsam iste iusto magnam modi molestiae, nobis odio odit placeat possimus praesentium quae quam quod quos repellat sapiente sint sunt tempore voluptas voluptatem? Ad beatae odio quo sint. Aliquam assumenda at atque beatae consectetur cupiditate delectus dolore doloremque ducimus enim esse et exercitationem explicabo fugiat harum illo iusto molestias nesciunt nisi odit officia officiis possimus praesentium, quibusdam recusandae rem repellat saepe sed soluta suscipit tempora totam ullam unde voluptatem voluptates voluptatibus voluptatum. Accusamus adipisci, aperiam blanditiis culpa dicta, eaque eligendi enim error et explicabo fugiat ipsa iste itaque molestias nisi numquam officia optio perferendis qui recusandae reiciendis repellat repellendus sit soluta ut vel veritatis voluptate. Assumenda atque beatae consequuntur delectus dolore esse facere, hic id odio officia perferendis sit veniam voluptatibus. Aliquam amet assumenda delectus doloribus eaque, eum impedit itaque, labore laboriosam laudantium minima odio officia praesentium, quibusdam recusandae repellat voluptas. Beatae eveniet expedita modi necessitatibus quam! A blanditiis culpa dolores fugiat impedit officia officiis possimus, repellendus sequi tempore? In incidunt nihil optio saepe! Amet atque beatae, maiores quia quidem ut voluptates. A consequuntur delectus, enim fugiat laudantium natus neque, non pariatur quaerat rem veniam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam, aspernatur atque beatae corporis distinctio dolorem dolores ea eaque earum est, et ex expedita ipsum laboriosam maxime, minima minus nobis numquam pariatur perferendis perspiciatis porro ratione repellat reprehenderit saepe sit soluta! Autem, cupiditate dolor enim illum incidunt itaque laudantium nostrum perferendis perspiciatis placeat qui quibusdam quo repellat rerum soluta temporibus voluptas. Ad corporis dolorem est hic ipsam molestias mollitia necessitatibus quis quisquam, quos similique sit suscipit, voluptate? Exercitationem molestiae possimus sequi vel voluptatem. Accusantium cum dolorem eligendi nam quae quod tenetur! A at, cum dolore doloremque enim est et explicabo facere facilis illo in maiores minus nemo quaerat quos reiciendis rem suscipit. Consequatur enim fuga id ipsum officia rerum temporibus voluptatibus voluptatum? A assumenda cupiditate esse et illo laudantium molestiae nam placeat porro, tempora veritatis voluptatem! Ab accusamus aspernatur beatae commodi deserunt dolor, dolore earum eligendi error esse expedita fugiat id inventore laborum molestiae necessitatibus nihil nisi nobis obcaecati odit optio placeat praesentium quae quaerat quas quis ratione recusandae rerum sequi sit veritatis vero vitae voluptates. Assumenda blanditiis cupiditate delectus dolorum eveniet, maiores natus quasi qui quos repellat tempora tenetur unde. Adipisci cumque dolorem eligendi eos hic inventore laborum, maxime natus nesciunt quia quidem quos sequi veritatis? Adipisci alias animi aspernatur beatae consectetur dolorem dolorum ducimus, ex fuga illo incidunt inventore ipsum laborum, libero maiores maxime nemo odit possimus quidem sapiente sed sequi similique soluta suscipit vitae voluptas voluptate? Alias animi architecto, asperiores at corporis cum dolorem eum excepturi expedita illum impedit, laborum minus nesciunt nihil obcaecati quisquam quos repellendus soluta ut veniam? Ab blanditiis consectetur, cumque hic mollitia odit quia sequi. Aliquid, consequuntur distinctio dolor eligendi error est eum hic incidunt iure maxime modi, numquam praesentium, quaerat quibusdam quo similique sit tempora vero voluptas voluptate. A alias, aliquid architecto, consectetur delectus eligendi error expedita fuga id illo in laborum magnam maxime, minus modi molestiae nemo nesciunt nisi nulla perspiciatis quam sapiente similique temporibus ullam vel vero voluptatem? A aliquid, at dolore eius esse excepturi itaque laudantium neque nisi quae quidem quis repellendus tempore totam unde vitae, voluptates. Alias et excepturi exercitationem ipsum non! At beatae consequuntur cum eligendi eveniet ex exercitationem facilis nemo non officiis omnis quibusdam reprehenderit, sed temporibus totam. Ab ad aliquid animi aperiam architecto blanditiis consequatur dignissimos exercitationem facilis in incidunt labore nulla odit officiis quia reiciendis repellat sequi suscipit velit, veniam. Accusamus aspernatur dolorem ea eaque eius esse est ex excepturi ipsum iste iusto minima minus molestias, mollitia nam nostrum officiis pariatur placeat provident quas ratione reprehenderit rerum temporibus totam voluptas voluptates voluptatum? Ab ad asperiores, exercitationem ipsum natus neque nobis quae? Accusamus adipisci blanditiis cupiditate error eum explicabo labore magnam, minus nobis nulla officia pariatur. Odio, ullam, voluptatem. Illo impedit natus nulla obcaecati praesentium qui reiciendis. Accusantium, debitis delectus dolor dolores error hic natus necessitatibus nulla porro quidem repellat repellendus saepe tenetur veritatis voluptas? Amet, aut deserunt dignissimos dolor dolorum eius impedit in incidunt nobis non omnis, perferendis rem sapiente velit veniam. Aliquam distinctio laboriosam numquam porro quo, sed ut voluptatem? A ab ad aliquid amet aperiam architecto aspernatur at beatae commodi corporis delectus deserunt dolorum earum esse eveniet exercitationem facere hic in iste itaque iure, laudantium magni maiores nisi porro quam qui quidem reprehenderit repudiandae sit soluta sunt tempore tenetur vel vero voluptate voluptatem! Atque blanditiis eos nisi nulla qui repellat sequi ullam vel vitae. Alias animi architecto, aut dolorem dolorum eos eum ipsa iusto minima molestiae nesciunt qui, quis repudiandae saepe sint? Assumenda commodi consequatur corporis cumque deleniti doloremque eaque enim in, incidunt ipsa laborum libero, nesciunt nihil quae qui quo quod recusandae suscipit veniam voluptatibus. Aliquam cupiditate dicta est excepturi iste iusto maxime nemo, odit quo recusandae sed sit ut? Aperiam aut dolore eaque error eveniet illo, in ipsam iure laborum pariatur quibusdam saepe tempora tenetur ullam vel velit voluptate. Aliquid aut consectetur consequatur deserunt distinctio doloribus earum eligendi esse eum fuga hic inventore, ipsum maiores molestiae numquam omnis placeat praesentium quasi, rerum sequi sint sit temporibus? Consequuntur delectus eaque enim minus quas repellat repudiandae tempore temporibus vero voluptates! Beatae consequatur culpa delectus deserunt doloremque, doloribus ducimus ea eaque eligendi esse fuga libero magni maiores numquam, officia omnis quaerat quia quisquam quo saepe tempore ullam vitae? Animi cumque cupiditate ducimus eveniet fugiat hic inventore, ipsum, itaque iure magni molestiae nihil numquam odio officiis perspiciatis provident quaerat, quidem quis reprehenderit sint soluta temporibus vel vero. Amet animi beatae consectetur, cupiditate dolorem eos impedit inventore iusto neque non placeat possimus quam quibusdam quidem reprehenderit unde velit veritatis. Ad adipisci aliquam animi aspernatur at atque, consectetur consequatur, dicta dolor dolorem earum eligendi est excepturi expedita facilis fugiat fugit inventore iure laboriosam laborum, molestias mollitia nesciunt nostrum numquam officia officiis perferendis quaerat qui quia repellendus reprehenderit saepe sed similique sint suscipit tempora vero! Alias aliquam assumenda beatae blanditiis consectetur culpa cumque deleniti distinctio dolor doloremque doloribus ducimus esse incidunt inventore ipsam iste iusto magnam modi molestiae, nobis odio odit placeat possimus praesentium quae quam quod quos repellat sapiente sint sunt tempore voluptas voluptatem? Ad beatae odio quo sint. Aliquam assumenda at atque beatae consectetur cupiditate delectus dolore doloremque ducimus enim esse et exercitationem explicabo fugiat harum illo iusto molestias nesciunt nisi odit officia officiis possimus praesentium, quibusdam recusandae rem repellat saepe sed soluta suscipit tempora totam ullam unde voluptatem voluptates voluptatibus voluptatum. Accusamus adipisci, aperiam blanditiis culpa dicta, eaque eligendi enim error et explicabo fugiat ipsa iste itaque molestias nisi numquam officia optio perferendis qui recusandae reiciendis repellat repellendus sit soluta ut vel veritatis voluptate. Assumenda atque beatae consequuntur delectus dolore esse facere, hic id odio officia perferendis sit veniam voluptatibus. Aliquam amet assumenda delectus doloribus eaque, eum impedit itaque, labore laboriosam laudantium minima odio officia praesentium, quibusdam recusandae repellat voluptas. Beatae eveniet expedita modi necessitatibus quam! A blanditiis culpa dolores fugiat impedit officia officiis possimus, repellendus sequi tempore? In incidunt nihil optio saepe! Amet atque beatae, maiores quia quidem ut voluptates. A consequuntur delectus, enim fugiat laudantium natus neque, non pariatur quaerat rem veniam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam, aspernatur atque beatae corporis distinctio dolorem dolores ea eaque earum est, et ex expedita ipsum laboriosam maxime, minima minus nobis numquam pariatur perferendis perspiciatis porro ratione repellat reprehenderit saepe sit soluta! Autem, cupiditate dolor enim illum incidunt itaque laudantium nostrum perferendis perspiciatis placeat qui quibusdam quo repellat rerum soluta temporibus voluptas. Ad corporis dolorem est hic ipsam molestias mollitia necessitatibus quis quisquam, quos similique sit suscipit, voluptate? Exercitationem molestiae possimus sequi vel voluptatem. Accusantium cum dolorem eligendi nam quae quod tenetur! A at, cum dolore doloremque enim est et explicabo facere facilis illo in maiores minus nemo quaerat quos reiciendis rem suscipit. Consequatur enim fuga id ipsum officia rerum temporibus voluptatibus voluptatum? A assumenda cupiditate esse et illo laudantium molestiae nam placeat porro, tempora veritatis voluptatem! Ab accusamus aspernatur beatae commodi deserunt dolor, dolore earum eligendi error esse expedita fugiat id inventore laborum molestiae necessitatibus nihil nisi nobis obcaecati odit optio placeat praesentium quae quaerat quas quis ratione recusandae rerum sequi sit veritatis vero vitae voluptates. Assumenda blanditiis cupiditate delectus dolorum eveniet, maiores natus quasi qui quos repellat tempora tenetur unde. Adipisci cumque dolorem eligendi eos hic inventore laborum, maxime natus nesciunt quia quidem quos sequi veritatis? Adipisci alias animi aspernatur beatae consectetur dolorem dolorum ducimus, ex fuga illo incidunt inventore ipsum laborum, libero maiores maxime nemo odit possimus quidem sapiente sed sequi similique soluta suscipit vitae voluptas voluptate? Alias animi architecto, asperiores at corporis cum dolorem eum excepturi expedita illum impedit, laborum minus nesciunt nihil obcaecati quisquam quos repellendus soluta ut veniam? Ab blanditiis consectetur, cumque hic mollitia odit quia sequi. Aliquid, consequuntur distinctio dolor eligendi error est eum hic incidunt iure maxime modi, numquam praesentium, quaerat quibusdam quo similique sit tempora vero voluptas voluptate. A alias, aliquid architecto, consectetur delectus eligendi error expedita fuga id illo in laborum magnam maxime, minus modi molestiae nemo nesciunt nisi nulla perspiciatis quam sapiente similique temporibus ullam vel vero voluptatem? A aliquid, at dolore eius esse excepturi itaque laudantium neque nisi quae quidem quis repellendus tempore totam unde vitae, voluptates. Alias et excepturi exercitationem ipsum non! At beatae consequuntur cum eligendi eveniet ex exercitationem facilis nemo non officiis omnis quibusdam reprehenderit, sed temporibus totam. Ab ad aliquid animi aperiam architecto blanditiis consequatur dignissimos exercitationem facilis in incidunt labore nulla odit officiis quia reiciendis repellat sequi suscipit velit, veniam. Accusamus aspernatur dolorem ea eaque eius esse est ex excepturi ipsum iste iusto minima minus molestias, mollitia nam nostrum officiis pariatur placeat provident quas ratione reprehenderit rerum temporibus totam voluptas voluptates voluptatum? Ab ad asperiores, exercitationem ipsum natus neque nobis quae? Accusamus adipisci blanditiis cupiditate error eum explicabo labore magnam, minus nobis nulla officia pariatur. Odio, ullam, voluptatem. Illo impedit natus nulla obcaecati praesentium qui reiciendis. Accusantium, debitis delectus dolor dolores error hic natus necessitatibus nulla porro quidem repellat repellendus saepe tenetur veritatis voluptas? Amet, aut deserunt dignissimos dolor dolorum eius impedit in incidunt nobis non omnis, perferendis rem sapiente velit veniam. Aliquam distinctio laboriosam numquam porro quo, sed ut voluptatem? A ab ad aliquid amet aperiam architecto aspernatur at beatae commodi corporis delectus deserunt dolorum earum esse eveniet exercitationem facere hic in iste itaque iure, laudantium magni maiores nisi porro quam qui quidem reprehenderit repudiandae sit soluta sunt tempore tenetur vel vero voluptate voluptatem! Atque blanditiis eos nisi nulla qui repellat sequi ullam vel vitae. Alias animi architecto, aut dolorem dolorum eos eum ipsa iusto minima molestiae nesciunt qui, quis repudiandae saepe sint? Assumenda commodi consequatur corporis cumque deleniti doloremque eaque enim in, incidunt ipsa laborum libero, nesciunt nihil quae qui quo quod recusandae suscipit veniam voluptatibus. Aliquam cupiditate dicta est excepturi iste iusto maxime nemo, odit quo recusandae sed sit ut? Aperiam aut dolore eaque error eveniet illo, in ipsam iure laborum pariatur quibusdam saepe tempora tenetur ullam vel velit voluptate. Aliquid aut consectetur consequatur deserunt distinctio doloribus earum eligendi esse eum fuga hic inventore, ipsum maiores molestiae numquam omnis placeat praesentium quasi, rerum sequi sint sit temporibus? Consequuntur delectus eaque enim minus quas repellat repudiandae tempore temporibus vero voluptates! Beatae consequatur culpa delectus deserunt doloremque, doloribus ducimus ea eaque eligendi esse fuga libero magni maiores numquam, officia omnis quaerat quia quisquam quo saepe tempore ullam vitae? Animi cumque cupiditate ducimus eveniet fugiat hic inventore, ipsum, itaque iure magni molestiae nihil numquam odio officiis perspiciatis provident quaerat, quidem quis reprehenderit sint soluta temporibus vel vero. Amet animi beatae consectetur, cupiditate dolorem eos impedit inventore iusto neque non placeat possimus quam quibusdam quidem reprehenderit unde velit veritatis. Ad adipisci aliquam animi aspernatur at atque, consectetur consequatur, dicta dolor dolorem earum eligendi est excepturi expedita facilis fugiat fugit inventore iure laboriosam laborum, molestias mollitia nesciunt nostrum numquam officia officiis perferendis quaerat qui quia repellendus reprehenderit saepe sed similique sint suscipit tempora vero! Alias aliquam assumenda beatae blanditiis consectetur culpa cumque deleniti distinctio dolor doloremque doloribus ducimus esse incidunt inventore ipsam iste iusto magnam modi molestiae, nobis odio odit placeat possimus praesentium quae quam quod quos repellat sapiente sint sunt tempore voluptas voluptatem? Ad beatae odio quo sint. Aliquam assumenda at atque beatae consectetur cupiditate delectus dolore doloremque ducimus enim esse et exercitationem explicabo fugiat harum illo iusto molestias nesciunt nisi odit officia officiis possimus praesentium, quibusdam recusandae rem repellat saepe sed soluta suscipit tempora totam ullam unde voluptatem voluptates voluptatibus voluptatum. Accusamus adipisci, aperiam blanditiis culpa dicta, eaque eligendi enim error et explicabo fugiat ipsa iste itaque molestias nisi numquam officia optio perferendis qui recusandae reiciendis repellat repellendus sit soluta ut vel veritatis voluptate. Assumenda atque beatae consequuntur delectus dolore esse facere, hic id odio officia perferendis sit veniam voluptatibus. Aliquam amet assumenda delectus doloribus eaque, eum impedit itaque, labore laboriosam laudantium minima odio officia praesentium, quibusdam recusandae repellat voluptas. Beatae eveniet expedita modi necessitatibus quam! A blanditiis culpa dolores fugiat impedit officia officiis possimus, repellendus sequi tempore? In incidunt nihil optio saepe! Amet atque beatae, maiores quia quidem ut voluptates. A consequuntur delectus, enim fugiat laudantium natus neque, non pariatur quaerat rem veniam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam, aspernatur atque beatae corporis distinctio dolorem dolores ea eaque earum est, et ex expedita ipsum laboriosam maxime, minima minus nobis numquam pariatur perferendis perspiciatis porro ratione repellat reprehenderit saepe sit soluta! Autem, cupiditate dolor enim illum incidunt itaque laudantium nostrum perferendis perspiciatis placeat qui quibusdam quo repellat rerum soluta temporibus voluptas. Ad corporis dolorem est hic ipsam molestias mollitia necessitatibus quis quisquam, quos similique sit suscipit, voluptate? Exercitationem molestiae possimus sequi vel voluptatem. Accusantium cum dolorem eligendi nam quae quod tenetur! A at, cum dolore doloremque enim est et explicabo facere facilis illo in maiores minus nemo quaerat quos reiciendis rem suscipit. Consequatur enim fuga id ipsum officia rerum temporibus voluptatibus voluptatum? A assumenda cupiditate esse et illo laudantium molestiae nam placeat porro, tempora veritatis voluptatem! Ab accusamus aspernatur beatae commodi deserunt dolor, dolore earum eligendi error esse expedita fugiat id inventore laborum molestiae necessitatibus nihil nisi nobis obcaecati odit optio placeat praesentium quae quaerat quas quis ratione recusandae rerum sequi sit veritatis vero vitae voluptates. Assumenda blanditiis cupiditate delectus dolorum eveniet, maiores natus quasi qui quos repellat tempora tenetur unde. Adipisci cumque dolorem eligendi eos hic inventore laborum, maxime natus nesciunt quia quidem quos sequi veritatis? Adipisci alias animi aspernatur beatae consectetur dolorem dolorum ducimus, ex fuga illo incidunt inventore ipsum laborum, libero maiores maxime nemo odit possimus quidem sapiente sed sequi similique soluta suscipit vitae voluptas voluptate? Alias animi architecto, asperiores at corporis cum dolorem eum excepturi expedita illum impedit, laborum minus nesciunt nihil obcaecati quisquam quos repellendus soluta ut veniam? Ab blanditiis consectetur, cumque hic mollitia odit quia sequi. Aliquid, consequuntur distinctio dolor eligendi error est eum hic incidunt iure maxime modi, numquam praesentium, quaerat quibusdam quo similique sit tempora vero voluptas voluptate. A alias, aliquid architecto, consectetur delectus eligendi error expedita fuga id illo in laborum magnam maxime, minus modi molestiae nemo nesciunt nisi nulla perspiciatis quam sapiente similique temporibus ullam vel vero voluptatem? A aliquid, at dolore eius esse excepturi itaque laudantium neque nisi quae quidem quis repellendus tempore totam unde vitae, voluptates. Alias et excepturi exercitationem ipsum non! At beatae consequuntur cum eligendi eveniet ex exercitationem facilis nemo non officiis omnis quibusdam reprehenderit, sed temporibus totam. Ab ad aliquid animi aperiam architecto blanditiis consequatur dignissimos exercitationem facilis in incidunt labore nulla odit officiis quia reiciendis repellat sequi suscipit velit, veniam. Accusamus aspernatur dolorem ea eaque eius esse est ex excepturi ipsum iste iusto minima minus molestias, mollitia nam nostrum officiis pariatur placeat provident quas ratione reprehenderit rerum temporibus totam voluptas voluptates voluptatum? Ab ad asperiores, exercitationem ipsum natus neque nobis quae? Accusamus adipisci blanditiis cupiditate error eum explicabo labore magnam, minus nobis nulla officia pariatur. Odio, ullam, voluptatem. Illo impedit natus nulla obcaecati praesentium qui reiciendis. Accusantium, debitis delectus dolor dolores error hic natus necessitatibus nulla porro quidem repellat repellendus saepe tenetur veritatis voluptas? Amet, aut deserunt dignissimos dolor dolorum eius impedit in incidunt nobis non omnis, perferendis rem sapiente velit veniam. Aliquam distinctio laboriosam numquam porro quo, sed ut voluptatem? A ab ad aliquid amet aperiam architecto aspernatur at beatae commodi corporis delectus deserunt dolorum earum esse eveniet exercitationem facere hic in iste itaque iure, laudantium magni maiores nisi porro quam qui quidem reprehenderit repudiandae sit soluta sunt tempore tenetur vel vero voluptate voluptatem! Atque blanditiis eos nisi nulla qui repellat sequi ullam vel vitae. Alias animi architecto, aut dolorem dolorum eos eum ipsa iusto minima molestiae nesciunt qui, quis repudiandae saepe sint? Assumenda commodi consequatur corporis cumque deleniti doloremque eaque enim in, incidunt ipsa laborum libero, nesciunt nihil quae qui quo quod recusandae suscipit veniam voluptatibus. Aliquam cupiditate dicta est excepturi iste iusto maxime nemo, odit quo recusandae sed sit ut? Aperiam aut dolore eaque error eveniet illo, in ipsam iure laborum pariatur quibusdam saepe tempora tenetur ullam vel velit voluptate. Aliquid aut consectetur consequatur deserunt distinctio doloribus earum eligendi esse eum fuga hic inventore, ipsum maiores molestiae numquam omnis placeat praesentium quasi, rerum sequi sint sit temporibus? Consequuntur delectus eaque enim minus quas repellat repudiandae tempore temporibus vero voluptates! Beatae consequatur culpa delectus deserunt doloremque, doloribus ducimus ea eaque eligendi esse fuga libero magni maiores numquam, officia omnis quaerat quia quisquam quo saepe tempore ullam vitae? Animi cumque cupiditate ducimus eveniet fugiat hic inventore, ipsum, itaque iure magni molestiae nihil numquam odio officiis perspiciatis provident quaerat, quidem quis reprehenderit sint soluta temporibus vel vero. Amet animi beatae consectetur, cupiditate dolorem eos impedit inventore iusto neque non placeat possimus quam quibusdam quidem reprehenderit unde velit veritatis. Ad adipisci aliquam animi aspernatur at atque, consectetur consequatur, dicta dolor dolorem earum eligendi est excepturi expedita facilis fugiat fugit inventore iure laboriosam laborum, molestias mollitia nesciunt nostrum numquam officia officiis perferendis quaerat qui quia repellendus reprehenderit saepe sed similique sint suscipit tempora vero! Alias aliquam assumenda beatae blanditiis consectetur culpa cumque deleniti distinctio dolor doloremque doloribus ducimus esse incidunt inventore ipsam iste iusto magnam modi molestiae, nobis odio odit placeat possimus praesentium quae quam quod quos repellat sapiente sint sunt tempore voluptas voluptatem? Ad beatae odio quo sint. Aliquam assumenda at atque beatae consectetur cupiditate delectus dolore doloremque ducimus enim esse et exercitationem explicabo fugiat harum illo iusto molestias nesciunt nisi odit officia officiis possimus praesentium, quibusdam recusandae rem repellat saepe sed soluta suscipit tempora totam ullam unde voluptatem voluptates voluptatibus voluptatum. Accusamus adipisci, aperiam blanditiis culpa dicta, eaque eligendi enim error et explicabo fugiat ipsa iste itaque molestias nisi numquam officia optio perferendis qui recusandae reiciendis repellat repellendus sit soluta ut vel veritatis voluptate. Assumenda atque beatae consequuntur delectus dolore esse facere, hic id odio officia perferendis sit veniam voluptatibus. Aliquam amet assumenda delectus doloribus eaque, eum impedit itaque, labore laboriosam laudantium minima odio officia praesentium, quibusdam recusandae repellat voluptas. Beatae eveniet expedita modi necessitatibus quam! A blanditiis culpa dolores fugiat impedit officia officiis possimus, repellendus sequi tempore? In incidunt nihil optio saepe! Amet atque beatae, maiores quia quidem ut voluptates. A consequuntur delectus, enim fugiat laudantium natus neque, non pariatur quaerat rem veniam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam, aspernatur atque beatae corporis distinctio dolorem dolores ea eaque earum est, et ex expedita ipsum laboriosam maxime, minima minus nobis numquam pariatur perferendis perspiciatis porro ratione repellat reprehenderit saepe sit soluta! Autem, cupiditate dolor enim illum incidunt itaque laudantium nostrum perferendis perspiciatis placeat qui quibusdam quo repellat rerum soluta temporibus voluptas. Ad corporis dolorem est hic ipsam molestias mollitia necessitatibus quis quisquam, quos similique sit suscipit, voluptate? Exercitationem molestiae possimus sequi vel voluptatem. Accusantium cum dolorem eligendi nam quae quod tenetur! A at, cum dolore doloremque enim est et explicabo facere facilis illo in maiores minus nemo quaerat quos reiciendis rem suscipit. Consequatur enim fuga id ipsum officia rerum temporibus voluptatibus voluptatum? A assumenda cupiditate esse et illo laudantium molestiae nam placeat porro, tempora veritatis voluptatem! Ab accusamus aspernatur beatae commodi deserunt dolor, dolore earum eligendi error esse expedita fugiat id inventore laborum molestiae necessitatibus nihil nisi nobis obcaecati odit optio placeat praesentium quae quaerat quas quis ratione recusandae rerum sequi sit veritatis vero vitae voluptates. Assumenda blanditiis cupiditate delectus dolorum eveniet, maiores natus quasi qui quos repellat tempora tenetur unde. Adipisci cumque dolorem eligendi eos hic inventore laborum, maxime natus nesciunt quia quidem quos sequi veritatis? Adipisci alias animi aspernatur beatae consectetur dolorem dolorum ducimus, ex fuga illo incidunt inventore ipsum laborum, libero maiores maxime nemo odit possimus quidem sapiente sed sequi similique soluta suscipit vitae voluptas voluptate? Alias animi architecto, asperiores at corporis cum dolorem eum excepturi expedita illum impedit, laborum minus nesciunt nihil obcaecati quisquam quos repellendus soluta ut veniam? Ab blanditiis consectetur, cumque hic mollitia odit quia sequi. Aliquid, consequuntur distinctio dolor eligendi error est eum hic incidunt iure maxime modi, numquam praesentium, quaerat quibusdam quo similique sit tempora vero voluptas voluptate. A alias, aliquid architecto, consectetur delectus eligendi error expedita fuga id illo in laborum magnam maxime, minus modi molestiae nemo nesciunt nisi nulla perspiciatis quam sapiente similique temporibus ullam vel vero voluptatem? A aliquid, at dolore eius esse excepturi itaque laudantium neque nisi quae quidem quis repellendus tempore totam unde vitae, voluptates. Alias et excepturi exercitationem ipsum non! At beatae consequuntur cum eligendi eveniet ex exercitationem facilis nemo non officiis omnis quibusdam reprehenderit, sed temporibus totam. Ab ad aliquid animi aperiam architecto blanditiis consequatur dignissimos exercitationem facilis in incidunt labore nulla odit officiis quia reiciendis repellat sequi suscipit velit, veniam. Accusamus aspernatur dolorem ea eaque eius esse est ex excepturi ipsum iste iusto minima minus molestias, mollitia nam nostrum officiis pariatur placeat provident quas ratione reprehenderit rerum temporibus totam voluptas voluptates voluptatum? Ab ad asperiores, exercitationem ipsum natus neque nobis quae? Accusamus adipisci blanditiis cupiditate error eum explicabo labore magnam, minus nobis nulla officia pariatur. Odio, ullam, voluptatem. Illo impedit natus nulla obcaecati praesentium qui reiciendis. Accusantium, debitis delectus dolor dolores error hic natus necessitatibus nulla porro quidem repellat repellendus saepe tenetur veritatis voluptas? Amet, aut deserunt dignissimos dolor dolorum eius impedit in incidunt nobis non omnis, perferendis rem sapiente velit veniam. Aliquam distinctio laboriosam numquam porro quo, sed ut voluptatem? A ab ad aliquid amet aperiam architecto aspernatur at beatae commodi corporis delectus deserunt dolorum earum esse eveniet exercitationem facere hic in iste itaque iure, laudantium magni maiores nisi porro quam qui quidem reprehenderit repudiandae sit soluta sunt tempore tenetur vel vero voluptate voluptatem! Atque blanditiis eos nisi nulla qui repellat sequi ullam vel vitae. Alias animi architecto, aut dolorem dolorum eos eum ipsa iusto minima molestiae nesciunt qui, quis repudiandae saepe sint? Assumenda commodi consequatur corporis cumque deleniti doloremque eaque enim in, incidunt ipsa laborum libero, nesciunt nihil quae qui quo quod recusandae suscipit veniam voluptatibus. Aliquam cupiditate dicta est excepturi iste iusto maxime nemo, odit quo recusandae sed sit ut? Aperiam aut dolore eaque error eveniet illo, in ipsam iure laborum pariatur quibusdam saepe tempora tenetur ullam vel velit voluptate. Aliquid aut consectetur consequatur deserunt distinctio doloribus earum eligendi esse eum fuga hic inventore, ipsum maiores molestiae numquam omnis placeat praesentium quasi, rerum sequi sint sit temporibus? Consequuntur delectus eaque enim minus quas repellat repudiandae tempore temporibus vero voluptates! Beatae consequatur culpa delectus deserunt doloremque, doloribus ducimus ea eaque eligendi esse fuga libero magni maiores numquam, officia omnis quaerat quia quisquam quo saepe tempore ullam vitae? Animi cumque cupiditate ducimus eveniet fugiat hic inventore, ipsum, itaque iure magni molestiae nihil numquam odio officiis perspiciatis provident quaerat, quidem quis reprehenderit sint soluta temporibus vel vero. Amet animi beatae consectetur, cupiditate dolorem eos impedit inventore iusto neque non placeat possimus quam quibusdam quidem reprehenderit unde velit veritatis. Ad adipisci aliquam animi aspernatur at atque, consectetur consequatur, dicta dolor dolorem earum eligendi est excepturi expedita facilis fugiat fugit inventore iure laboriosam laborum, molestias mollitia nesciunt nostrum numquam officia officiis perferendis quaerat qui quia repellendus reprehenderit saepe sed similique sint suscipit tempora vero! Alias aliquam assumenda beatae blanditiis consectetur culpa cumque deleniti distinctio dolor doloremque doloribus ducimus esse incidunt inventore ipsam iste iusto magnam modi molestiae, nobis odio odit placeat possimus praesentium quae quam quod quos repellat sapiente sint sunt tempore voluptas voluptatem? Ad beatae odio quo sint. Aliquam assumenda at atque beatae consectetur cupiditate delectus dolore doloremque ducimus enim esse et exercitationem explicabo fugiat harum illo iusto molestias nesciunt nisi odit officia officiis possimus praesentium, quibusdam recusandae rem repellat saepe sed soluta suscipit tempora totam ullam unde voluptatem voluptates voluptatibus voluptatum. Accusamus adipisci, aperiam blanditiis culpa dicta, eaque eligendi enim error et explicabo fugiat ipsa iste itaque molestias nisi numquam officia optio perferendis qui recusandae reiciendis repellat repellendus sit soluta ut vel veritatis voluptate. Assumenda atque beatae consequuntur delectus dolore esse facere, hic id odio officia perferendis sit veniam voluptatibus. Aliquam amet assumenda delectus doloribus eaque, eum impedit itaque, labore laboriosam laudantium minima odio officia praesentium, quibusdam recusandae repellat voluptas. Beatae eveniet expedita modi necessitatibus quam! A blanditiis culpa dolores fugiat impedit officia officiis possimus, repellendus sequi tempore? In incidunt nihil optio saepe! Amet atque beatae, maiores quia quidem ut voluptates. A consequuntur delectus, enim fugiat laudantium natus neque, non pariatur quaerat rem veniam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam, aspernatur atque beatae corporis distinctio dolorem dolores ea eaque earum est, et ex expedita ipsum laboriosam maxime, minima minus nobis numquam pariatur perferendis perspiciatis porro ratione repellat reprehenderit saepe sit soluta! Autem, cupiditate dolor enim illum incidunt itaque laudantium nostrum perferendis perspiciatis placeat qui quibusdam quo repellat rerum soluta temporibus voluptas. Ad corporis dolorem est hic ipsam molestias mollitia necessitatibus quis quisquam, quos similique sit suscipit, voluptate? Exercitationem molestiae possimus sequi vel voluptatem. Accusantium cum dolorem eligendi nam quae quod tenetur! A at, cum dolore doloremque enim est et explicabo facere facilis illo in maiores minus nemo quaerat quos reiciendis rem suscipit. Consequatur enim fuga id ipsum officia rerum temporibus voluptatibus voluptatum? A assumenda cupiditate esse et illo laudantium molestiae nam placeat porro, tempora veritatis voluptatem! Ab accusamus aspernatur beatae commodi deserunt dolor, dolore earum eligendi error esse expedita fugiat id inventore laborum molestiae necessitatibus nihil nisi nobis obcaecati odit optio placeat praesentium quae quaerat quas quis ratione recusandae rerum sequi sit veritatis vero vitae voluptates. Assumenda blanditiis cupiditate delectus dolorum eveniet, maiores natus quasi qui quos repellat tempora tenetur unde. Adipisci cumque dolorem eligendi eos hic inventore laborum, maxime natus nesciunt quia quidem quos sequi veritatis? Adipisci alias animi aspernatur beatae consectetur dolorem dolorum ducimus, ex fuga illo incidunt inventore ipsum laborum, libero maiores maxime nemo odit possimus quidem sapiente sed sequi similique soluta suscipit vitae voluptas voluptate? Alias animi architecto, asperiores at corporis cum dolorem eum excepturi expedita illum impedit, laborum minus nesciunt nihil obcaecati quisquam quos repellendus soluta ut veniam? Ab blanditiis consectetur, cumque hic mollitia odit quia sequi. Aliquid, consequuntur distinctio dolor eligendi error est eum hic incidunt iure maxime modi, numquam praesentium, quaerat quibusdam quo similique sit tempora vero voluptas voluptate. A alias, aliquid architecto, consectetur delectus eligendi error expedita fuga id illo in laborum magnam maxime, minus modi molestiae nemo nesciunt nisi nulla perspiciatis quam sapiente similique temporibus ullam vel vero voluptatem? A aliquid, at dolore eius esse excepturi itaque laudantium neque nisi quae quidem quis repellendus tempore totam unde vitae, voluptates. Alias et excepturi exercitationem ipsum non! At beatae consequuntur cum eligendi eveniet ex exercitationem facilis nemo non officiis omnis quibusdam reprehenderit, sed temporibus totam. Ab ad aliquid animi aperiam architecto blanditiis consequatur dignissimos exercitationem facilis in incidunt labore nulla odit officiis quia reiciendis repellat sequi suscipit velit, veniam. Accusamus aspernatur dolorem ea eaque eius esse est ex excepturi ipsum iste iusto minima minus molestias, mollitia nam nostrum officiis pariatur placeat provident quas ratione reprehenderit rerum temporibus totam voluptas voluptates voluptatum? Ab ad asperiores, exercitationem ipsum natus neque nobis quae? Accusamus adipisci blanditiis cupiditate error eum explicabo labore magnam, minus nobis nulla officia pariatur. Odio, ullam, voluptatem. Illo impedit natus nulla obcaecati praesentium qui reiciendis. Accusantium, debitis delectus dolor dolores error hic natus necessitatibus nulla porro quidem repellat repellendus saepe tenetur veritatis voluptas? Amet, aut deserunt dignissimos dolor dolorum eius impedit in incidunt nobis non omnis, perferendis rem sapiente velit veniam. Aliquam distinctio laboriosam numquam porro quo, sed ut voluptatem? A ab ad aliquid amet aperiam architecto aspernatur at beatae commodi corporis delectus deserunt dolorum earum esse eveniet exercitationem facere hic in iste itaque iure, laudantium magni maiores nisi porro quam qui quidem reprehenderit repudiandae sit soluta sunt tempore tenetur vel vero voluptate voluptatem! Atque blanditiis eos nisi nulla qui repellat sequi ullam vel vitae. Alias animi architecto, aut dolorem dolorum eos eum ipsa iusto minima molestiae nesciunt qui, quis repudiandae saepe sint? Assumenda commodi consequatur corporis cumque deleniti doloremque eaque enim in, incidunt ipsa laborum libero, nesciunt nihil quae qui quo quod recusandae suscipit veniam voluptatibus. Aliquam cupiditate dicta est excepturi iste iusto maxime nemo, odit quo recusandae sed sit ut? Aperiam aut dolore eaque error eveniet illo, in ipsam iure laborum pariatur quibusdam saepe tempora tenetur ullam vel velit voluptate. Aliquid aut consectetur consequatur deserunt distinctio doloribus earum eligendi esse eum fuga hic inventore, ipsum maiores molestiae numquam omnis placeat praesentium quasi, rerum sequi sint sit temporibus? Consequuntur delectus eaque enim minus quas repellat repudiandae tempore temporibus vero voluptates! Beatae consequatur culpa delectus deserunt doloremque, doloribus ducimus ea eaque eligendi esse fuga libero magni maiores numquam, officia omnis quaerat quia quisquam quo saepe tempore ullam vitae? Animi cumque cupiditate ducimus eveniet fugiat hic inventore, ipsum, itaque iure magni molestiae nihil numquam odio officiis perspiciatis provident quaerat, quidem quis reprehenderit sint soluta temporibus vel vero. Amet animi beatae consectetur, cupiditate dolorem eos impedit inventore iusto neque non placeat possimus quam quibusdam quidem reprehenderit unde velit veritatis. Ad adipisci aliquam animi aspernatur at atque, consectetur consequatur, dicta dolor dolorem earum eligendi est excepturi expedita facilis fugiat fugit inventore iure laboriosam laborum, molestias mollitia nesciunt nostrum numquam officia officiis perferendis quaerat qui quia repellendus reprehenderit saepe sed similique sint suscipit tempora vero! Alias aliquam assumenda beatae blanditiis consectetur culpa cumque deleniti distinctio dolor doloremque doloribus ducimus esse incidunt inventore ipsam iste iusto magnam modi molestiae, nobis odio odit placeat possimus praesentium quae quam quod quos repellat sapiente sint sunt tempore voluptas voluptatem? Ad beatae odio quo sint. Aliquam assumenda at atque beatae consectetur cupiditate delectus dolore doloremque ducimus enim esse et exercitationem explicabo fugiat harum illo iusto molestias nesciunt nisi odit officia officiis possimus praesentium, quibusdam recusandae rem repellat saepe sed soluta suscipit tempora totam ullam unde voluptatem voluptates voluptatibus voluptatum. Accusamus adipisci, aperiam blanditiis culpa dicta, eaque eligendi enim error et explicabo fugiat ipsa iste itaque molestias nisi numquam officia optio perferendis qui recusandae reiciendis repellat repellendus sit soluta ut vel veritatis voluptate. Assumenda atque beatae consequuntur delectus dolore esse facere, hic id odio officia perferendis sit veniam voluptatibus. Aliquam amet assumenda delectus doloribus eaque, eum impedit itaque, labore laboriosam laudantium minima odio officia praesentium, quibusdam recusandae repellat voluptas. Beatae eveniet expedita modi necessitatibus quam! A blanditiis culpa dolores fugiat impedit officia officiis possimus, repellendus sequi tempore? In incidunt nihil optio saepe! Amet atque beatae, maiores quia quidem ut voluptates. A consequuntur delectus, enim fugiat laudantium natus neque, non pariatur quaerat rem veniam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="card">
                    <div class="up-and-down">
                        <div class="up"></div>
                        <div class="recommend-cnt">2</div>
                        <div class="down"></div>
                    </div>
                    <div class="card-content">
                        <div class="profile">
                            <div class="profile-picture"></div>
                            <div class="profile-name">왕밤빵</div>
                            <div class="date">1h 20m ago</div>
                        </div>
                        <div class="title">CSS 적용이 왜 안될까요?</div>
                        <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                        <div class="etc">
                            <div class="comment">
                                <div class="comment-img"></div>
                                <div class="comment-cnt">2 comments</div>
                            </div>
                            <div class="save">
                                <div class="save-img"></div>
                                <div class="save-txt">save</div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </main>

        <aside class="aside">
            <div class="about-study">
                <div class="about-study-header">About Study</div>
                <div class="about-main">
                    <div class="about-study-content">모여서 JSP "JSP BOOK"을 공부하는 스터디 입니다. 하루에 JSP 책을 공부하면서 같이 스터디하는 그런 그렇고 그런 스터디입니다. 다들 열심히 잘해봐요 매주 출석확인합니다.</div>
                    <div class="about-study-info">
                        <div class="about-member">
                            <div class="member-cnt">13</div>
                            <div class="member-txt">Members</div>
                        </div>
                        <div class="about-posts">
                            <div class="post-cnt">130</div>
                            <div class="post-txt">Posts</div>
                        </div>

                    </div>
                    <div class="about-study-create-date">
                        <div class="calender">
                            <div class="calender-img"></div>
                            <div class="calender-txt">Created</div>
                        </div>
                        <div class="create-date">2021년 3월 31일</div>
                    </div>
                    <div class="about-study-master">
                        <div class="master-img-container">
                            <div class="master-img"></div>
                            <div class="master-txt">스터디 개설자</div>
                        </div>
                        <div class="master-name">왕밤빵</div>
                    </div>
                </div>
            </div>
            <div class="top-rate">
                <div class="top-rate-header flex">상위 게시글</div>
                <div class="top-content">
                    <ul>
                        <li class="card">
                            <div class="card-content">
                                <div class="profile">
                                    <div class="profile-picture"></div>
                                    <div class="profile-name">왕밤빵</div>
                                    <div class="date">1h 20m ago</div>
                                </div>
                                <div class="title">CSS 적용이 왜 안될까요?</div>
                                <div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto culpa error eum, exercitationem, magni molestiae nam natus ratione repellendus sapiente sint temporibus unde! Culpa distinctio exercitationem facilis ipsa maiores odio, possimus quam quis recusandae repudiandae saepe sapiente similique sunt suscipit ut. Dolores excepturi incidunt porro quaerat quidem? Alias cumque cupiditate dolores iusto magnam magni recusandae, sit totam ullam. A doloremque eos labore libero maiores molestias nihil nulla quas rerum sed!</div>
                                <div class="etc">
                                    <div class="comment">
                                        <div class="comment-img"></div>
                                        <div class="comment-cnt">2 comments</div>
                                    </div>
                                    <div class="save">
                                        <div class="save-img"></div>
                                        <div class="save-txt">save</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </aside>

        <div class="modal hide">
            <div class="modal-board">
                <div class="modal-con">
                    <div class="modal-head">
                        <div class="write-hand"></div>
                        <div class="write-content">글을 작성해주세요.</div>
                    </div>
                    <div class="modal-body">
                        <input class="modal-title" type="text" placeholder="제목을 입력하세요">
                        <textarea class="modal-content" cols="30" rows="10"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button">작성</button>
                        <button type="button">취소</button>
                    </div>
                </div>
            </div>


        </div>

<%@include file="/layout/footer.jsp" %>
    </div>
    <script>
        const write = document.querySelector('.write-section');
        const modal = document.querySelector('.modal');
        write.addEventListener('click', () =>{
            if(modal.classList.contains('hide')){
                modal.classList.remove('hide');
                modal.classList.add('flex-show');
            }else {
                modal.classList.remove('flex-show');
                modal.classList.add('hide');
            }
        });
        window.addEventListener("load", () =>{
            const button = document.querySelector(".btn-show");


            var flag = true;
            button.addEventListener("click", function(e) {
                const aside = document.querySelector(".about-study");

                console.log(aside);
                if(flag){
                    aside.style='display: block; transition: 1s;';
                    flag = !flag;
                }
                else{
                    aside.style='display: none; transition: 1s;';
                    flag = !flag;
                }
            });
        });
    </script>
</body>
</html>