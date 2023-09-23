.class public abstract Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "BaseSecurityTokenActivity.java"


# static fields
.field public static final EXTRA_TAG_HANDLING_ENABLED:Ljava/lang/String; = "tag_handling_enabled"

.field private static final FIDESMO_APP_PACKAGE:Ljava/lang/String; = "com.fidesmo.sec.android"

.field public static final REQUEST_CODE_PIN:I = 0x1


# instance fields
.field private mCachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field protected mNfcTagDispatcher:Lnordpol/android/TagDispatcher;

.field private mTagHandlingEnabled:Z

.field protected mUsbDispatcher:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

.field protected tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Ljava/io/IOException;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->handleSecurityTokenError(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Ljava/io/IOException;)V

    return-void
.end method

.method private handleSecurityTokenError(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Ljava/io/IOException;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    const-string v0, "Exception in handleSecurityTokenError"

    const/4 v1, 0x0

    .line 225
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    instance-of v0, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/UnsupportedUsbTokenException;

    if-eqz v0, :cond_0

    const v8, 0x7f110c8e

    .line 228
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    instance-of v0, v9, Landroid/nfc/TagLostException;

    if-eqz v0, :cond_1

    const v8, 0x7f110c83

    .line 233
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_1
    instance-of v0, v9, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport$IsoDepNotSupportedException;

    if-eqz v0, :cond_2

    const v8, 0x7f110c80

    .line 238
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    return-void

    .line 242
    :cond_2
    instance-of v0, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const v2, 0x7f110c78

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 243
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v7, v2, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_3
    instance-of v0, v9, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    if-eqz v0, :cond_6

    .line 248
    move-object v0, v9

    check-cast v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;->getResponseCode()S

    move-result v0

    and-int/lit8 v4, v0, -0x10

    const/16 v5, 0x63c0

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4

    and-int/lit8 v9, v0, 0xf

    .line 258
    :try_start_0
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v8, v6

    .line 264
    :goto_0
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0021

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 263
    invoke-virtual {v7, v9, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    return-void

    :cond_4
    const v4, 0x7f110c7f

    sparse-switch v0, :sswitch_data_0

    .line 365
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-virtual {v7, v2, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_0
    const v8, 0x7f110c86

    .line 325
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 361
    :sswitch_1
    new-array v8, v3, [Ljava/lang/Object;

    const-string v0, "CLA"

    aput-object v0, v8, v1

    invoke-virtual {v7, v4, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 356
    :sswitch_2
    new-array v8, v3, [Ljava/lang/Object;

    const-string v0, "INS"

    aput-object v0, v8, v1

    invoke-virtual {v7, v4, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 351
    :sswitch_3
    new-array v8, v3, [Ljava/lang/Object;

    const-string v0, "P1/P2"

    aput-object v0, v8, v1

    invoke-virtual {v7, v4, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_4
    const v8, 0x7f110c7d

    .line 319
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 330
    :sswitch_5
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v8

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->FIDESMO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    if-ne v8, v0, :cond_6

    const-string v8, "com.fidesmo.sec.android"

    .line 332
    invoke-direct {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->isAndroidAppInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 333
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->promptFidesmoPgpInstall()V

    goto :goto_2

    .line 335
    :cond_5
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->promptFidesmoAppInstall()V

    goto :goto_2

    :sswitch_6
    const v8, 0x7f110c7a

    .line 302
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    goto :goto_2

    :sswitch_7
    const v8, 0x7f110c7c

    .line 312
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_8
    const v8, 0x7f110c79

    .line 307
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto :goto_2

    .line 276
    :sswitch_9
    :try_start_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v8, v6

    :goto_1
    const v0, 0x7f110c82

    .line 282
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    goto :goto_2

    :sswitch_a
    const v8, 0x7f110c7b

    .line 346
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_b
    const v8, 0x7f110c87

    .line 295
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    goto :goto_2

    :sswitch_c
    const v8, 0x7f110c84

    .line 287
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    .line 372
    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 373
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v7, v2, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const v8, 0x7f110c7e

    .line 375
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6285 -> :sswitch_c
        0x6700 -> :sswitch_b
        0x6883 -> :sswitch_a
        0x6982 -> :sswitch_9
        0x6983 -> :sswitch_8
        0x6985 -> :sswitch_7
        0x6a80 -> :sswitch_6
        0x6a82 -> :sswitch_5
        0x6a83 -> :sswitch_4
        0x6a88 -> :sswitch_4
        0x6b00 -> :sswitch_3
        0x6d00 -> :sswitch_2
        0x6e00 -> :sswitch_1
        0x6f00 -> :sswitch_0
    .end sparse-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->handleSecurityTokenError(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Ljava/io/IOException;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isAndroidAppInstalled(Ljava/lang/String;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 466
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 469
    :try_start_0
    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const-string v4, "App not installed on Android device"

    .line 472
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->isAndroidAppInstalled(Ljava/lang/String;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private nfcTagDiscovered(Landroid/nfc/Tag;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 111
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/NfcTransport;-><init>(Landroid/nfc/Tag;)V

    .line 116
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->securityTokenDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/Transport;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->nfcTagDiscovered(Landroid/nfc/Tag;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private promptFidesmoAppInstall()V
    .locals 6

    move-object/16 v3, p0

    .line 455
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;-><init>()V

    .line 456
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "fidesmoInstallDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->promptFidesmoAppInstall()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private promptFidesmoPgpInstall()V
    .locals 6

    move-object/16 v3, p0

    .line 446
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;-><init>()V

    .line 447
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "fidesmoPgpInstallDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->promptFidesmoPgpInstall()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private usbTransportDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 121
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->securityTokenDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/Transport;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->usbTransportDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$BaseSecurityTokenActivity(Landroid/nfc/Tag;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->nfcTagDiscovered(Landroid/nfc/Tag;)V

    return-void
.end method

.method final synthetic bridge$lambda$1$BaseSecurityTokenActivity(Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->usbTransportDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;)V

    return-void
.end method

.method public checkDeviceConnection()V
    .locals 4

    move-object/16 v1, p0

    .line 495
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mUsbDispatcher:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->rescanDevices()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->checkDeviceConnection()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 82
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Security Token: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected handleSecurityToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 439
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->handleSecurityToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected obtainSecurityTokenPin(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 403
    :try_start_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 402
    invoke-static {v4, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getCachedPassphrase(Landroid/content/Context;JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mCachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-void

    .line 409
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "required_input"

    .line 411
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredPassphrase(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v5

    .line 410
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v5, 0x1

    .line 412
    invoke-virtual {v4, v0, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 414
    :catch_0
    new-instance v5, Ljava/lang/AssertionError;

    const-string v0, "tried to find passphrase for non-existing key. this is a programming error!"

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->obtainSecurityTokenPin(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    .line 434
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-eq v3, v2, :cond_1

    .line 425
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->setResult(I)V

    .line 426
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->finish()V

    return-void

    :cond_1
    const-string v2, "result_data"

    .line 429
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 430
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mCachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 181
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lnordpol/android/TagDispatcherBuilder;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$$Lambda$0;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;)V

    invoke-direct {v0, v3, v1}, Lnordpol/android/TagDispatcherBuilder;-><init>(Landroid/app/Activity;Lnordpol/android/OnDiscoveredTagListener;)V

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Lnordpol/android/TagDispatcherBuilder;->enableUnavailableNfcUserPrompt(Z)Lnordpol/android/TagDispatcherBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 185
    invoke-virtual {v0, v2}, Lnordpol/android/TagDispatcherBuilder;->enableSounds(Z)Lnordpol/android/TagDispatcherBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v2}, Lnordpol/android/TagDispatcherBuilder;->enableDispatchingOnUiThread(Z)Lnordpol/android/TagDispatcherBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v1}, Lnordpol/android/TagDispatcherBuilder;->enableBroadcomWorkaround(Z)Lnordpol/android/TagDispatcherBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lnordpol/android/TagDispatcherBuilder;->build()Lnordpol/android/TagDispatcher;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mNfcTagDispatcher:Lnordpol/android/TagDispatcher;

    .line 190
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$$Lambda$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;)V

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mUsbDispatcher:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

    if-eqz v4, :cond_0

    const-string v0, "tag_handling_enabled"

    .line 195
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    goto :goto_0

    .line 197
    :cond_0
    iput-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    .line 200
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 201
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.nfc.action.TAG_DISCOVERED"

    .line 202
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    new-instance v4, Ljava/lang/AssertionError;

    const-string v0, "should not happen: NfcOperationActivity.onCreate is called instead of onNewIntent!"

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 221
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mNfcTagDispatcher:Lnordpol/android/TagDispatcher;

    invoke-virtual {v0, v2}, Lnordpol/android/TagDispatcher;->interceptIntent(Landroid/content/Intent;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onNewIntent(Landroid/content/Intent;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPause()V
    .locals 5

    move-object/16 v2, p0

    .line 384
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onPause()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onPause()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BaseNfcActivity.onPause"

    const/4 v1, 0x0

    .line 385
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mNfcTagDispatcher:Lnordpol/android/TagDispatcher;

    invoke-virtual {v0}, Lnordpol/android/TagDispatcher;->disableExclusiveNfc()V

    return-void
.end method

.method public onResume()V
    .locals 5

    move-object/16 v2, p0

    .line 395
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onResume()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onResume()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BaseNfcActivity.onResume"

    const/4 v1, 0x0

    .line 396
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mNfcTagDispatcher:Lnordpol/android/TagDispatcher;

    invoke-virtual {v0}, Lnordpol/android/TagDispatcher;->enableExclusiveNfc()Lnordpol/android/TagDispatcher$NfcStatus;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 210
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tag_handling_enabled"

    .line 212
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSecurityTokenError(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 99
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onSecurityTokenError(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 106
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenError(Ljava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 90
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-direct {v3, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "token_info"

    .line 91
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onSecurityTokenPreExecute()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onSecurityTokenPreExecute()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onStart()V
    .locals 4

    move-object/16 v1, p0

    .line 486
    invoke-super {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onStart()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onStart()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mUsbDispatcher:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    move-object/16 v1, p0

    .line 480
    invoke-super {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onStop()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->onStop()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mUsbDispatcher:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->onStop()V

    return-void
.end method

.method protected pauseTagHandling()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->pauseTagHandling()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected resumeTagHandling()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->resumeTagHandling()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public securityTokenDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/Transport;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 130
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mTagHandlingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->mCachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 135
    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getInstanceForTransport(Lorg/sufficientlysecure/keychain/securitytoken/Transport;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    move-result-object v2

    .line 137
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 168
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;--->securityTokenDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/Transport;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
