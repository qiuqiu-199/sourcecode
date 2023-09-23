.class Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$1;
.super Ljava/lang/Object;
.source "FoldableLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->initialiseInnerViews()V
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

    .line 155
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$1;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 158
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->access$000(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
