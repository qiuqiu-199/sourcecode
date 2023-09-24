.class Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;
.super Ljava/lang/Object;
.source "ImportKeysListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 166
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 169
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    move-result-object v2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;->importKeys(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
