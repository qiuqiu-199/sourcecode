.class Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 80
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 89
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onScrollStateChanged(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;--->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 84
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-virtual {v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onScrolled(II)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;--->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
