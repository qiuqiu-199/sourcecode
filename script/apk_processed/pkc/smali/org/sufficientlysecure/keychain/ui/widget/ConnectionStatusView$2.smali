.class Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;
.super Ljava/lang/Object;
.source "ConnectionStatusView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 131
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;->val$index:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 134
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->access$500(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    move-result-object v0

    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;->val$index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->access$100(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->invalidate()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;--->onAnimationUpdate(Landroid/animation/ValueAnimator;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
