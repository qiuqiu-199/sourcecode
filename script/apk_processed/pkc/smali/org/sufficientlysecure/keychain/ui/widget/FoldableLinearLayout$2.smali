.class Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;
.super Ljava/lang/Object;
.source "FoldableLinearLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->toggleFolded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 178
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 186
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->access$100(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;--->onAnimationEnd(Landroid/view/animation/Animation;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;--->onAnimationRepeat(Landroid/view/animation/Animation;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;--->onAnimationStart(Landroid/view/animation/Animation;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
