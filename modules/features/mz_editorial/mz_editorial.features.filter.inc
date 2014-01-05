<?php
/**
 * @file
 * mz_editorial.features.filter.inc
 */

/**
 * Implements hook_filter_default_formats().
 */
function mz_editorial_filter_default_formats() {
  $formats = array();

  // Exported format: Filtered HTML.
  $formats['filtered_html'] = array(
    'format' => 'filtered_html',
    'name' => 'Filtered HTML',
    'cache' => 1,
    'status' => 1,
    'weight' => -9,
    'filters' => array(
      'filter_url' => array(
        'weight' => -49,
        'status' => 1,
        'settings' => array(
          'filter_url_length' => 72,
        ),
      ),
      'filter_html' => array(
        'weight' => -48,
        'status' => 1,
        'settings' => array(
          'allowed_html' => '<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd>',
          'filter_html_help' => 1,
          'filter_html_nofollow' => 0,
        ),
      ),
      'media_filter' => array(
        'weight' => -46,
        'status' => 1,
        'settings' => array(),
      ),
      'filter_autop' => array(
        'weight' => -45,
        'status' => 1,
        'settings' => array(),
      ),
      'filter_htmlcorrector' => array(
        'weight' => -44,
        'status' => 1,
        'settings' => array(),
      ),
      'ckeditor_link_filter' => array(
        'weight' => 0,
        'status' => 1,
        'settings' => array(),
      ),
      'invisimail_encode_js_entities' => array(
        'weight' => 10,
        'status' => 1,
        'settings' => array(
          'encoder' => 'js_entities',
          'chunk' => 0,
          'link' => 0,
        ),
      ),
      'caption_filter' => array(
        'weight' => 20,
        'status' => 1,
        'settings' => array(),
      ),
    ),
  );

  // Exported format: Full HTML.
  $formats['full_html'] = array(
    'format' => 'full_html',
    'name' => 'Full HTML',
    'cache' => 1,
    'status' => 1,
    'weight' => -10,
    'filters' => array(
      'filter_html' => array(
        'weight' => -10,
        'status' => 1,
        'settings' => array(
          'allowed_html' => '<div> <a> <em> <i> <strong> <b> <cite> <blockquote> <quote> <code> <ul> <ol> <li> <dl> <dt> <dd> <p> <h2> <h3> <h4> <h5> <h6> <img> <br> <hr> <p>',
          'filter_html_help' => 1,
          'filter_html_nofollow' => 0,
        ),
      ),
      'ckeditor_link_filter' => array(
        'weight' => 0,
        'status' => 1,
        'settings' => array(),
      ),
      'filter_autop' => array(
        'weight' => 0,
        'status' => 1,
        'settings' => array(),
      ),
      'media_filter' => array(
        'weight' => 2,
        'status' => 1,
        'settings' => array(),
      ),
      'filter_htmlcorrector' => array(
        'weight' => 10,
        'status' => 1,
        'settings' => array(),
      ),
      'filter_url' => array(
        'weight' => 10,
        'status' => 1,
        'settings' => array(
          'filter_url_length' => 72,
        ),
      ),
      'invisimail_encode_js_entities' => array(
        'weight' => 10,
        'status' => 1,
        'settings' => array(
          'encoder' => 'js_entities',
          'chunk' => 0,
          'link' => 0,
        ),
      ),
      'caption_filter' => array(
        'weight' => 20,
        'status' => 1,
        'settings' => array(),
      ),
    ),
  );

  // Exported format: Plain text.
  $formats['plain_text'] = array(
    'format' => 'plain_text',
    'name' => 'Plain text',
    'cache' => 1,
    'status' => 1,
    'weight' => -8,
    'filters' => array(
      'filter_html_escape' => array(
        'weight' => 0,
        'status' => 1,
        'settings' => array(),
      ),
      'filter_url' => array(
        'weight' => 1,
        'status' => 1,
        'settings' => array(
          'filter_url_length' => 72,
        ),
      ),
      'filter_autop' => array(
        'weight' => 2,
        'status' => 1,
        'settings' => array(),
      ),
    ),
  );

  return $formats;
}
