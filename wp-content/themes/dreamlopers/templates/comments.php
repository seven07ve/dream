<?php
  if (post_password_required()) {
    return;
  }
  echo '<div id="post_comments"></div>';
  if (have_comments()) : ?>
    <section id="comments">
      <h3 class="sectiontitle">
        <?php printf(_n('One Response ', '%1$s Responses ', get_comments_number(), 'dreamlopers'), number_format_i18n(get_comments_number()), get_the_title()); ?>
      </h3>
      <ol class="media-list">
        <?php wp_list_comments(array('walker' => new Kadence_Walker_Comment)); ?>
      </ol>
      <?php if (get_comment_pages_count() > 1 && get_option('page_comments')) : ?>
        <nav>
          <ul class="pager">
            <?php if (get_previous_comments_link()) : ?>
              <li class="previous"><?php previous_comments_link(__('&larr; Older comments', 'dreamlopers')); ?></li>
            <?php endif; ?>
            <?php if (get_next_comments_link()) : ?>
              <li class="next"><?php next_comments_link(__('Newer comments &rarr;', 'dreamlopers')); ?></li>
            <?php endif; ?>
          </ul>
        </nav>
      <?php endif; ?>
      <?php if (!comments_open() && !is_page() && post_type_supports(get_post_type(), 'comments')) : ?>
        <?php global $dreamlopers; if(isset($dreamlopers['close_comments'])) {
            $show_closed_comment = $dreamlopers['close_comments'];
          } else {
            $show_closed_comment = 1;
          }
        if($show_closed_comment == 1){ ?>
          <div class="alert">
            <?php _e('Comments are closed.', 'dreamlopers'); ?>
          </div>
        <?php } else { 
        } ?>
      <?php endif; ?>
    </section><!-- /#comments -->
<?php endif; ?>

<?php if (!have_comments() && !comments_open() && !is_page() && post_type_supports(get_post_type(), 'comments')) : ?>
      <?php global $dreamlopers; if(isset($dreamlopers['close_comments'])) {
        $show_closed_comment = $dreamlopers['close_comments']; 
      } else {
        $show_closed_comment = 1;
      }
      if($show_closed_comment == 1){ ?>
        <section id="comments">
          <div class="alert">
            <?php _e('Comments are closed.', 'dreamlopers'); ?>
          </div>
        </section><!-- /#comments -->
      <?php } else { 
      } ?>
<?php endif; ?>

<?php if (comments_open()) : ?>
  <section id="respond">
      <?php $comment_args = array( 'fields' => apply_filters( 'comment_form_default_fields', array(
           'author' => '<div class="col-md-4">' . '<label for="author">' . __('Name', 'dreamlopers') . ( $req ? ' <span class="comment-required">*</span>' : '' ) . '</label> ' .
                        '<input id="author" name="author" type="text" value="' . esc_attr( $comment_author ) . '" ' . ( $req ? 'aria-required="true"' : '') . ' /></div>',
            'email'  => '<div class="col-md-4"><label for="email">' . __( 'Email (will not be published)', 'dreamlopers') . ( $req ? ' <span class="comment-required">*</span>' : '' ) . '</label> ' .
                        '<input type="email" class="text" name="email" id="email" value="' . esc_attr(  $comment_author_email ) . '" ' . ( $req ? 'aria-required="true"' : '') . ' /></div>',
            'url'    => '<div class="col-md-4"><label for="url">' . __( 'Website', 'dreamlopers' ) . '</label> ' .
                        '<input id="url" name="url" type="url" value="' . esc_attr( $comment_author_url ) . '" /></div>',
                        ) 
            ),
              'comment_field'        => '<p class="comment-form-comment"><label for="comment">' . __( 'Comment', 'dreamlopers' ) . '</label> <textarea id="comment" name="comment" cols="45" rows="8" class="input-xlarge" aria-required="true" required="required"></textarea></p>',
              'comment_notes_before' => '',
              'comment_notes_after'  => '',
              'id_form'              => 'commentform',
              'id_submit'            => 'submit',
              'class_submit'         => 'kad-btn kad-btn-primary',
              'name_submit'          => 'submit',
              'title_reply'          => __('Leave a Reply', 'dreamlopers'),
              'title_reply_to'       => __('Leave a Reply to %s', 'dreamlopers'),
              'label_submit'         => __('Submit Comment', 'dreamlopers'),
              'submit_button'        => '<input name="%1$s" type="submit" id="%2$s" class="%3$s" value="%4$s" />',
              'submit_field'         => '<p class="form-submit">%1$s %2$s</p>',
              'format'               => 'html5',
        );
        comment_form($comment_args); ?>
  </section><!-- /#respond -->
<?php endif; ?>
