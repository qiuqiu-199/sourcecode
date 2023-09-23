.class Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;
.super Ljava/lang/Object;
.source "ViewKeyActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 218
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;--->onAnimationEnd(Landroid/view/animation/Animation;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 231
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 233
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$200(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;--->onAnimationRepeat(Landroid/view/animation/Animation;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;--->onAnimationStart(Landroid/view/animation/Animation;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
