.class Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;
.super Ljava/lang/Object;
.source "ImportKeysSearchFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Landroid/support/v7/widget/SearchView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 145
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Landroid/support/v7/widget/SearchView;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 155
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;--->onQueryTextChange(Ljava/lang/String;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 148
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 149
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;--->onQueryTextSubmit(Ljava/lang/String;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
