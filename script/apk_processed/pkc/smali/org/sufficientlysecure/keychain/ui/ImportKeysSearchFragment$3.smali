.class Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;
.super Ljava/lang/Object;
.source "ImportKeysSearchFragment.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


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


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 160
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 168
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;--->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;--->onMenuItemActionExpand(Landroid/view/MenuItem;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
