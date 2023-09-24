.class Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$1;->this$0:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$1;->this$0:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;

    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->access$000(Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V

    return-void
.end method
