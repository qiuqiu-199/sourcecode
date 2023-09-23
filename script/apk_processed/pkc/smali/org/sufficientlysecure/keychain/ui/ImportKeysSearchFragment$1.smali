.class Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;
.super Ljava/lang/Object;
.source "ImportKeysSearchFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnSuggestionListener;


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

    .line 131
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Landroid/support/v7/widget/SearchView;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 140
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;->val$searchView:Landroid/support/v7/widget/SearchView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;--->onSuggestionClick(I)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSuggestionSelect(I)Z
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 134
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;->val$searchView:Landroid/support/v7/widget/SearchView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;--->onSuggestionSelect(I)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
