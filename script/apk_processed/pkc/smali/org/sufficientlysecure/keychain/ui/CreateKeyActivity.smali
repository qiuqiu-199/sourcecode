.class public Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;
.source "CreateKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;,
        Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;
    }
.end annotation


# static fields
.field public static final EXTRA_ADDITIONAL_EMAILS:Ljava/lang/String; = "additional_emails"

.field public static final EXTRA_CREATE_SECURITY_TOKEN:Ljava/lang/String; = "create_yubi_key"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "email"

.field public static final EXTRA_FIRST_TIME:Ljava/lang/String; = "first_time"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PASSPHRASE:Ljava/lang/String; = "passphrase"

.field public static final EXTRA_SECURITY_TOKEN_ADMIN_PIN:Ljava/lang/String; = "yubi_key_admin_pin"

.field public static final EXTRA_SECURITY_TOKEN_INFO:Ljava/lang/String; = "token_info"

.field public static final EXTRA_SECURITY_TOKEN_PIN:Ljava/lang/String; = "yubi_key_pin"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "currentFragment"


# instance fields
.field mAdditionalEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCreateSecurityToken:Z

.field mCurrentFragment:Landroid/support/v4/app/Fragment;

.field mEmail:Ljava/lang/String;

.field mFirstTime:Z

.field mName:Ljava/lang/String;

.field mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field mSecurityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field mSecurityTokenAuth:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field mSecurityTokenDec:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field mSecurityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field mSecurityTokenSign:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 42
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 138
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;

    if-eqz v0, :cond_0

    .line 139
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;->doSecurityTokenInBackground()V

    return-void

    .line 143
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finish()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->finishWithFirstTimeHandling(Landroid/content/Intent;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->finish()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishWithFirstTimeHandling(Landroid/content/Intent;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 251
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    if-eqz v0, :cond_1

    .line 252
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->setFirstTime(Z)V

    .line 255
    invoke-static {v3}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    if-eqz v4, :cond_0

    .line 259
    invoke-virtual {v0, v4}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 263
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->startActivity(Landroid/content/Intent;)V

    .line 266
    :cond_2
    :goto_0
    invoke-super {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->finish()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->finishWithFirstTimeHandling(Landroid/content/Intent;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public handleTokenInfo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 152
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;

    if-eqz v0, :cond_0

    .line 153
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;->onSecurityTokenPostExecute()V

    return-void

    .line 158
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 160
    sput-boolean v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->sDisableFragmentAnimations:Z

    .line 161
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 162
    sput-boolean v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->sDisableFragmentAnimations:Z

    .line 165
    :cond_1
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 166
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    if-eqz v0, :cond_2

    .line 167
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->REPLACE:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    goto :goto_0

    .line 169
    :cond_2
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->handleTokenInfo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c003e

    .line 189
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    .line 208
    iput-object v6, v5, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 211
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 213
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$CreateKeyActivity$FragAction:[I

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->ordinal()I

    move-result v7

    aget v7, v1, v7

    const v1, 0x7f0900fc

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v7, 0x7f010021

    const v2, 0x7f010022

    const v3, 0x7f010020

    const v4, 0x7f010023

    .line 227
    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const/4 v7, 0x0

    .line 229
    invoke-virtual {v0, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const-string v7, "currentFragment"

    .line 230
    invoke-virtual {v0, v1, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 231
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :pswitch_1
    const-string v7, "currentFragment"

    .line 223
    invoke-virtual {v0, v1, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 224
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :pswitch_3
    const/4 v7, 0x0

    .line 215
    invoke-virtual {v0, v7, v7}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const-string v7, "currentFragment"

    .line 216
    invoke-virtual {v0, v1, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 217
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 237
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 75
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    .line 79
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f110cf3

    if-eqz v0, :cond_0

    .line 81
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mNfcTagDispatcher:Lnordpol/android/TagDispatcher;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lnordpol/android/TagDispatcher;->interceptIntent(Landroid/content/Intent;)Z

    .line 83
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->setTitle(I)V

    return-void

    :cond_0
    if-eqz v4, :cond_1

    const-string v0, "name"

    .line 92
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    const-string v0, "email"

    .line 93
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    const-string v0, "additional_emails"

    .line 94
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    const-string v0, "passphrase"

    .line 95
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v0, "first_time"

    .line 96
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    const-string v0, "create_yubi_key"

    .line 97
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    const-string v0, "yubi_key_pin"

    .line 98
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v0, "yubi_key_admin_pin"

    .line 99
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 101
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v0, "currentFragment"

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v0, "name"

    .line 106
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    const-string v0, "email"

    .line 107
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    const-string v0, "first_time"

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    const-string v0, "create_yubi_key"

    .line 109
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    const-string v0, "token_info"

    .line 111
    invoke-virtual {v4, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "token_info"

    .line 112
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 114
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 115
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->START:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    .line 116
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->setTitle(I)V

    return-void

    .line 123
    :cond_2
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;

    move-result-object v4

    .line 124
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->START:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    .line 127
    :goto_0
    iget-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    if-eqz v4, :cond_3

    const v4, 0x7f110045

    .line 128
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->setTitle(I)V

    .line 129
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->setTitle(I)V

    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 175
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "name"

    .line 177
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "email"

    .line 178
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "additional_emails"

    .line 179
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "passphrase"

    .line 180
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "first_time"

    .line 181
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "create_yubi_key"

    .line 182
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "yubi_key_pin"

    .line 183
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "yubi_key_admin_pin"

    .line 184
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 148
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->handleTokenInfo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public startCreateKeyForSecurityToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    .line 194
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 196
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;

    move-result-object v2

    .line 197
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;--->startCreateKeyForSecurityToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
