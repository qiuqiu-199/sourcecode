.class public Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OrbotRequiredDialogActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;


# static fields
.field public static final EXTRA_CRYPTO_INPUT:Ljava/lang/String; = "extra_crypto_input"

.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final EXTRA_START_ORBOT:Ljava/lang/String; = "start_orbot"

.field public static final MESSAGE_DIALOG_CANCEL:I = 0x3

.field public static final MESSAGE_ORBOT_IGNORE:I = 0x2

.field public static final MESSAGE_ORBOT_STARTED:I = 0x1

.field public static final RESULT_CRYPTO_INPUT:Ljava/lang/String; = "result_crypto_input"


# instance fields
.field private mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

.field private mMessenger:Landroid/os/Messenger;

.field private mShowOrbotProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 51
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static createOrbotNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 8

    move-object/16 v5, p0

    .line 189
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/NotificationChannelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannelsIfNecessary()V

    .line 191
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "orbot"

    invoke-direct {v0, v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0800e5

    .line 192
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/high16 v2, 0x7f0e0000

    .line 193
    invoke-static {v5, v2}, Lorg/sufficientlysecure/keychain/util/ResourceUtils;->getDrawableAsNotificationBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f11087c

    .line 194
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f11087a

    .line 195
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 196
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 198
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 199
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "start_orbot"

    .line 200
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 201
    invoke-static {v5, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f11087b

    .line 206
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f0800e8

    .line 205
    invoke-virtual {v0, v2, v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 209
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->createOrbotNotification(Landroid/content/Context;)Landroid/app/Notification;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private dismissOrbotProgressDialog()V
    .locals 4

    move-object/16 v1, p0

    .line 137
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mShowOrbotProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mShowOrbotProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->dismissOrbotProgressDialog()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessage(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 170
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 172
    iput v3, v0, Landroid/os/Message;->what:I

    .line 174
    :try_start_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "Could not deliver message"

    const/4 v1, 0x0

    .line 176
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->sendMessage(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static showOrbotRequiredNotification(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    const-string v0, "notification"

    .line 182
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 184
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->createOrbotNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->showOrbotRequiredNotification(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    .line 117
    invoke-super {v2, v3, v4, p0}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x9234

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->dismissOrbotProgressDialog()V

    .line 123
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$2;

    invoke-direct {v4, v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$2;-><init>(Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x3

    .line 165
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->sendMessage(I)V

    .line 166
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->finish()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->onCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 75
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "extra_crypto_input"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 78
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    if-nez v3, :cond_0

    .line 80
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 83
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "messenger"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mMessenger:Landroid/os/Messenger;

    .line 85
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "start_orbot"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v3

    .line 88
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mShowOrbotProgressDialog:Landroid/app/ProgressDialog;

    .line 89
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mShowOrbotProgressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f110c28

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 90
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mShowOrbotProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mShowOrbotProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 92
    invoke-static {v2, v2, v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->bestPossibleOrbotStart(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->showDialog()V

    :goto_0
    return-void
.end method

.method public onNeutralButton()V
    .locals 6

    move-object/16 v3, p0

    const/4 v0, 0x2

    .line 155
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->sendMessage(I)V

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-static {}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getForNoProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withParcelableProxy(Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v1

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    const-string v1, "result_crypto_input"

    .line 158
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 159
    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->onNeutralButton()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOrbotStarted()V
    .locals 6

    move-object/16 v3, p0

    .line 144
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->dismissOrbotProgressDialog()V

    const/4 v0, 0x1

    .line 145
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->sendMessage(I)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_crypto_input"

    .line 148
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 149
    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->onOrbotStarted()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showDialog()V
    .locals 5

    move-object/16 v2, p0

    .line 103
    sget-object v0, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;->INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;)V

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;->runnableRunDelayed(Ljava/lang/Runnable;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;--->showDialog()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
