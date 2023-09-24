.class Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
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

    .line 60
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    move-object/16 v1, p0

    .line 63
    invoke-super {v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;--->onChanged()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    .line 69
    invoke-super {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;--->onItemRangeInserted(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    .line 75
    invoke-super {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;--->onItemRangeRemoved(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V

    return-void
.end method
