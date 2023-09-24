.class Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;
.super Ljava/lang/Object;
.source "CreateSecurityTokenWaitFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 98
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 101
    new-instance v3, Landroid/content/Intent;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
