.class public Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImportKeysAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public b:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 143
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    .line 144
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 145
    invoke-static {v2}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;->b:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    .line 146
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;->b:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->access$100(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->setNonInteractive(Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
