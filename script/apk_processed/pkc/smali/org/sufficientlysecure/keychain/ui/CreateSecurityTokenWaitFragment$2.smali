.class Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$2;
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

    .line 108
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 111
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
