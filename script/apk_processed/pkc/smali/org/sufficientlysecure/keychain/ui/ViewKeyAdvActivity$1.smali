.class Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewKeyAdvActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->animateMenuItem(Landroid/view/MenuItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;

.field final synthetic val$animateShow:Z

.field final synthetic val$vEditSubkeys:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;ZLandroid/view/MenuItem;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 267
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;

    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;->val$animateShow:Z

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;->val$vEditSubkeys:Landroid/view/MenuItem;

    invoke-direct {v0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;ZLandroid/view/MenuItem;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 270
    iget-boolean v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;->val$animateShow:Z

    if-nez v2, :cond_0

    .line 271
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;->val$vEditSubkeys:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 273
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;->val$vEditSubkeys:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;--->onAnimationEnd(Landroid/animation/Animator;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
