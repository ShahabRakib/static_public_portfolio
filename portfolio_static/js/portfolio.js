/*(preloader starts)*/
var pLoad = document.getElementById("wrapLoader");
function pLoader() {
    pLoad.style.cssText = "display: none;";
}
/*(preloader ends)*/
/*(menu item responsive starts)*/
var menuItemId = document.getElementById("menuItemsId");
var menuIconId = document.getElementById("menuIconsId");
menuIconId.addEventListener("click", function() {
  if(menuItemId.style.opacity == "1"){
      menuItemId.style.cssText = "opacity: 0; right: -100%; transition: .5s; -webkit-transition: .5s;";
  }
  else{
    menuItemId.style.cssText = "opacity: 1; right: 0; transition: .5s; -webkit-transition: .5s;";
  }
});
/*(menu item responsive ends)*/


/*(profile edit starts)*/
// JavaScript to handle the modal

// Open the modal
document.addEventListener('DOMContentLoaded', function() {
  var profileEditModal = document.getElementById('profile_edit_form_id');
  var profileEditBtn = document.getElementById('edit_profile_id');
  var profileEditCloseButtons = document.getElementsByClassName('profileCloseForm');

  // Ensure the modal and buttons exist
  if (profileEditModal && profileEditBtn) {
      // Open the modal
      profileEditBtn.onclick = function() {
          profileEditModal.style.display = 'block';
      };

      // Close the modal when the close buttons are clicked
      if (profileEditCloseButtons.length > 0) {
          for (var i = 0; i < profileEditCloseButtons.length; i++) {
              profileEditCloseButtons[i].onclick = function() {
                  profileEditModal.style.display = 'none';
              };
          }
      }

      // Close the modal if clicking outside of it
      document.addEventListener('click', function(event) {
          if (!profileEditModal.contains(event.target) && event.target !== profileEditBtn) {
              profileEditModal.style.display = 'none';
          }
      });
  }
});



/**********(post starts)***********/

document.addEventListener('DOMContentLoaded', function() {
  var postOpenBtn = document.getElementById('open_post_id');
  var postModal = document.getElementById('post_edit_form_id');
  var postCloseButtons = document.getElementsByClassName('postCloseForm');

  // Ensure the modal and buttons exist
  if (postOpenBtn && postModal) {
      // Open the post modal
      postOpenBtn.onclick = function() {
          postModal.style.display = 'block';
      };

      // Close the post modal when the close buttons are clicked
      if (postCloseButtons.length > 0) {
          for (var i = 0; i < postCloseButtons.length; i++) {
              postCloseButtons[i].onclick = function() {
                  postModal.style.display = 'none';
              };
          }
      }

      // Close the post modal if clicking outside of it
      document.addEventListener('click', function(event) {
          if (!postModal.contains(event.target) && event.target !== postOpenBtn) {
              postModal.style.display = 'none';
          }
      });
  }
});

/**********(post ends)***********/


/**********(post three dot open starts)***********/

document.addEventListener('DOMContentLoaded', function() {
  var postThreeDotBtns = document.querySelectorAll('[id="post_three_dot_id"]');
  var postEditNavs = document.querySelectorAll('[id="post_edit_nav_id"]');

  postThreeDotBtns.forEach(function(btn, index) {
      btn.addEventListener("click", function(event) {
          // Hide all edit navs first
          postEditNavs.forEach(function(nav) {
              nav.style.display = "none";
          });

          // Show the corresponding edit nav
          postEditNavs[index].style.display = "block";
          event.stopPropagation(); // Prevent the click from closing the nav immediately
      });
  });

  document.addEventListener("click", function(event) {
      postEditNavs.forEach(function(nav) {
          if (!nav.contains(event.target) && !Array.from(postThreeDotBtns).includes(event.target)) {
              nav.style.display = "none";
          }
      });
  });
});

/**********(post three dot open ends)***********/

/**********(post edit button for post edit open starts)***********/
document.addEventListener('DOMContentLoaded', function() {
  var editPostNavBtns = document.querySelectorAll('[id="edit_post_nav_id"]');
  var postEditForms = document.querySelectorAll('[id="target_post_edit_form_id"]');
  var postEditFormCloseBtns = document.querySelectorAll('.target_postCloseForm');

  if (editPostNavBtns.length > 0 && postEditForms.length > 0) {
      editPostNavBtns.forEach(function(editPostNavBtn, index) {
          var postEditFormOpen = postEditForms[index];

          // Open the post edit form
          editPostNavBtn.addEventListener('click', function() {
              postEditForms.forEach(function(form) {
                  form.style.display = 'none';
              });
              postEditFormOpen.style.display = 'block';
          });

          // Close the post edit form when clicking close buttons
          postEditFormCloseBtns.forEach(function(closeBtn) {
              closeBtn.addEventListener('click', function() {
                  postEditFormOpen.style.display = 'none';
              });
          });

          // Close the post edit form if clicking outside of it
          document.addEventListener('click', function(event) {
              if (!postEditFormOpen.contains(event.target) && event.target !== editPostNavBtn) {
                  postEditFormOpen.style.display = 'none';
              }
          });
      });
  }
});


/**********(post edit button for post edit open ends)***********/

/**********(post delet starts)***********/

document.addEventListener('DOMContentLoaded', function() {
  var deletePostNavBtns = document.querySelectorAll('[id="delet_post_nav_id"]');
  var areYouSureDlts = document.querySelectorAll('[id="dl_post_id"]');
  var deletePostCloseBtns = document.querySelectorAll('.no_for_close_dl');

  if (deletePostNavBtns.length > 0 && areYouSureDlts.length > 0) {
      deletePostNavBtns.forEach(function(deletePostNavBtn, index) {
          var areYouSureDltOpen = areYouSureDlts[index];

          // Open the delete confirmation modal
          deletePostNavBtn.addEventListener('click', function() {
              areYouSureDlts.forEach(function(modal) {
                  modal.style.display = 'none';
              });
              areYouSureDltOpen.style.display = 'block';
          });

          // Close the delete confirmation modal when clicking close buttons
          deletePostCloseBtns.forEach(function(closeBtn) {
              closeBtn.addEventListener('click', function() {
                  areYouSureDltOpen.style.display = 'none';
              });
          });

          // Close the delete confirmation modal if clicking outside of it
          document.addEventListener('click', function(event) {
              if (!areYouSureDltOpen.contains(event.target) && event.target !== deletePostNavBtn) {
                  areYouSureDltOpen.style.display = 'none';
              }
          });
      });
  }
});


/**********(post delet ends)***********/

/**********(like post starts)***********/

document.addEventListener('DOMContentLoaded', function() {
  var likePostBtns = document.querySelectorAll('[id="like_post_id"]');
  var likeListPostOpens = document.querySelectorAll('[id="likes_list_post_id"]');
  var likeListPostCloseBtns = document.querySelectorAll('.close_like_post_list');

  if (likePostBtns.length > 0 && likeListPostOpens.length > 0) {
      likePostBtns.forEach(function(likePostBtn, index) {
          var likeListPostOpen = likeListPostOpens[index];

          // Open the likes list
          likePostBtn.addEventListener('click', function() {
              likeListPostOpens.forEach(function(list) {
                  list.style.display = 'none';
              });
              likeListPostOpen.style.display = 'block';
          });

          // Close the likes list when clicking close buttons
          likeListPostCloseBtns.forEach(function(closeBtn) {
              closeBtn.addEventListener('click', function() {
                  likeListPostOpen.style.display = 'none';
              });
          });

          // Close the likes list if clicking outside of it
          document.addEventListener('click', function(event) {
              if (!likeListPostOpen.contains(event.target) && event.target !== likePostBtn) {
                  likeListPostOpen.style.display = 'none';
              }
          });
      });
  }
});

/**********(like post ends)***********/

/**********(dislike post starts)***********/

document.addEventListener('DOMContentLoaded', function() {
  var dislikePostBtns = document.querySelectorAll('[id="dislike_post_id"]');
  var dislikeListPostOpens = document.querySelectorAll('[id="dislikes_post_id"]');
  var dislikeListPostCloseBtns = document.querySelectorAll('.close_dislike_post_list');

  if (dislikePostBtns.length > 0 && dislikeListPostOpens.length > 0) {
      dislikePostBtns.forEach(function(dislikePostBtn, index) {
          var dislikeListPostOpen = dislikeListPostOpens[index];

          // Open the dislikes list
          dislikePostBtn.addEventListener('click', function() {
              dislikeListPostOpens.forEach(function(list) {
                  list.style.display = 'none';
              });
              dislikeListPostOpen.style.display = 'block';
          });

          // Close the dislikes list when clicking close buttons
          dislikeListPostCloseBtns.forEach(function(closeBtn) {
              closeBtn.addEventListener('click', function() {
                  dislikeListPostOpen.style.display = 'none';
              });
          });

          // Close the dislikes list if clicking outside of it
          document.addEventListener('click', function(event) {
              if (!dislikeListPostOpen.contains(event.target) && event.target !== dislikePostBtn) {
                  dislikeListPostOpen.style.display = 'none';
              }
          });
      });
  }
});

/**********(dislike post ends)***********/

/**********(neutral post starts)***********/

document.addEventListener('DOMContentLoaded', function() {
  var neutralPostBtns = document.querySelectorAll('[id="neutral_post_id"]');
  var neutralsListPostOpens = document.querySelectorAll('[id="neutrals_post_id"]');
  var neutralListPostCloseBtns = document.querySelectorAll('.close_neutral_post_list');

  if (neutralPostBtns.length > 0 && neutralsListPostOpens.length > 0) {
      neutralPostBtns.forEach(function(neutralPostBtn, index) {
          var neutralsListPostOpen = neutralsListPostOpens[index];

          // Open the neutrals list
          neutralPostBtn.addEventListener('click', function() {
              neutralsListPostOpens.forEach(function(list) {
                  list.style.display = 'none';
              });
              neutralsListPostOpen.style.display = 'block';
          });

          // Close the neutrals list when clicking close buttons
          neutralListPostCloseBtns.forEach(function(closeBtn) {
              closeBtn.addEventListener('click', function() {
                  neutralsListPostOpen.style.display = 'none';
              });
          });

          // Close the neutrals list if clicking outside of it
          document.addEventListener('click', function(event) {
              if (!neutralsListPostOpen.contains(event.target) && event.target !== neutralPostBtn) {
                  neutralsListPostOpen.style.display = 'none';
              }
          });
      });
  }
});

/**********(neutral post ends)***********/



/**********(post video starts)***********/
document.addEventListener('DOMContentLoaded', function() {
  const video = document.getElementById('miu_post_video');

  // Check if the video is in the viewport
  function isInViewport(element) {
      const rect = element.getBoundingClientRect();
      return rect.top >= 0 && rect.bottom <= (window.innerHeight || document.documentElement.clientHeight);
  }

  // Autoplay when in view
  function checkAutoplay() {
      if (isInViewport(video)) {
          video.play();
      } else {
          video.pause();
      }
  }

  // Listen to the scroll and resize events
  window.addEventListener('scroll', checkAutoplay);
  window.addEventListener('resize', checkAutoplay);

  // Initially check if the video is in view
  checkAutoplay();

  // Unmute the video when the user interacts with the sound button
  video.addEventListener('volumechange', function() {
      if (!video.muted) {
          video.volume = 1.0; // Set volume to normal
      }
  });

  // Mute the video initially
  video.muted = true;
});

/**********(post video ends)***********/

/**********(post video ends)***********/

document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.see-more-btn').forEach(function(button) {
      button.addEventListener('click', function() {
          const postContainer = button.closest('.target_post_contents');
          postContainer.querySelector('.post-short').style.display = 'none';
          postContainer.querySelector('.post-full').style.display = 'inline';
          button.style.display = 'none';
      });
  });
});

/**********(post video ends)***********/

/**********(Bangla font starts)***********/
document.addEventListener('DOMContentLoaded', function() {
  var posts = document.querySelectorAll('.target_post_contents p');

  posts.forEach(function(post) {
      if (/[অ-ঔক-হ০-৯]/.test(post.textContent)) {
          // If Bangla characters are detected, apply the Bangla class
          post.classList.add('bangla');
      }
  });
});
/**********(Bangla font add ends)***********/

/**********(Post reaction starts***********/

function sendReaction(reaction, postId, userId) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'post_reaction.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);

            // Update the reaction counts in the HTML
            document.querySelectorAll('.post-reaction-count').forEach(function(span) {
                if (span.getAttribute('data-post-id') === String(postId)) {
                    if (span.getAttribute('data-reaction') === 'like') {
                        span.innerText = 'L - ' + response.like;
                    } else if (span.getAttribute('data-reaction') === 'dislike') {
                        span.innerText = 'D - ' + response.dislike;
                    } else if (span.getAttribute('data-reaction') === 'neutral') {
                        span.innerText = 'N - ' + response.neutral;
                    }
                }
            });
        }
    };

    xhr.send('reaction=' + reaction + '&post_id=' + postId + '&user_id=' + userId);
}
/**********(Post reaction ends)***********/

/**********(copy link starts)***********/

document.addEventListener('DOMContentLoaded', function() {
    var copyButtons = document.querySelectorAll('.copy-link-btn');
    
    copyButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            var url = this.getAttribute('data-url');
            navigator.clipboard.writeText(url).then(function() {
                alert('Link copied to clipboard!');
            }).catch(function(err) {
                console.error('Could not copy text: ', err);
            });
        });
    });
});
/**********(copy link ends)***********/

/**********(right click off starts)***********/

document.addEventListener('contextmenu', function(event) {
    event.preventDefault();
  });

/**********(right click off ends)***********/
