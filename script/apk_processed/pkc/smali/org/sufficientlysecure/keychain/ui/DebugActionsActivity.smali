.class public Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;
.super Landroid/app/Activity;
.source "DebugActionsActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 57
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    .line 143
    new-instance v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f1200c1

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p0, -0x1

    const/4 v1, -0x2

    invoke-direct {v5, p0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;--->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createView()Landroid/view/View;
    .locals 9

    move-object/16 v6, p0

    .line 79
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x0

    const/16 v3, 0x28

    .line 83
    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 85
    new-instance v2, Landroid/support/v7/widget/Toolbar;

    invoke-direct {v2, v6}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    const-string v3, "Debug Actions"

    .line 86
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "Register ApiApp"

    .line 89
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$0;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Unregister ApiApp"

    .line 94
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$1;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Select Public Key"

    .line 98
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$2;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Select Signing Key (legacy)"

    .line 103
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$3;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Select Signing Key"

    .line 108
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$4;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Select Authentication Key"

    .line 113
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$5;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Select Signing Key (Autocrypt)"

    .line 118
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$6;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Request Permission (first secret key)"

    .line 123
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$7;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Deduplicate (dupl@mugenguild.com)"

    .line 129
    invoke-direct {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->addButtonToLayout(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$8;

    invoke-direct {v3, v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity$$Lambda$8;-><init>(Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;--->createView()Landroid/view/View;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getPackageSig()[B
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    move-object/16 v3, p0

    .line 152
    :try_start_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.sufficientlysecure.keychain"

    const/16 v2, 0x40

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 155
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;--->getPackageSig()[B"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startPendingIntent(Landroid/app/PendingIntent;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 163
    :try_start_0
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 165
    invoke-static {v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;--->startPendingIntent(Landroid/app/PendingIntent;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$createView$0$DebugActionsActivity(Landroid/view/View;)V
    .locals 3

    .line 90
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.sufficientlysecure.keychain"

    .line 91
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->getPackageSig()[B

    move-result-object v2

    .line 90
    invoke-virtual {p1, v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createRegisterPendingIntent(Landroid/content/Intent;Ljava/lang/String;[B)Landroid/app/PendingIntent;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method final synthetic lambda$createView$1$DebugActionsActivity(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    const-string v0, "org.sufficientlysecure.keychain"

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->deleteApiApp(Ljava/lang/String;)V

    const-string p1, "Ok"

    .line 96
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {p0, p1, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object p1

    invoke-interface {p1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void
.end method

.method final synthetic lambda$createView$2$DebugActionsActivity(Landroid/view/View;)V
    .locals 6

    .line 99
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 p1, 0x0

    new-array v2, p1, [J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectPublicKeyPendingIntent(Landroid/content/Intent;[JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/app/PendingIntent;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method final synthetic lambda$createView$3$DebugActionsActivity(Landroid/view/View;)V
    .locals 4

    .line 104
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.sufficientlysecure.keychain"

    .line 105
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->getPackageSig()[B

    move-result-object v2

    const-string v3, "test@openkeychain.org"

    .line 104
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectSignKeyIdLegacyPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method final synthetic lambda$createView$4$DebugActionsActivity(Landroid/view/View;)V
    .locals 6

    .line 109
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "org.sufficientlysecure.keychain"

    .line 110
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->getPackageSig()[B

    move-result-object v3

    const-string v4, "test@openkeychain.org"

    const/4 v5, 0x0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectSignKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method final synthetic lambda$createView$5$DebugActionsActivity(Landroid/view/View;)V
    .locals 2

    .line 114
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.sufficientlysecure.keychain"

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectAuthenticationKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method final synthetic lambda$createView$6$DebugActionsActivity(Landroid/view/View;)V
    .locals 6

    .line 119
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "org.sufficientlysecure.keychain"

    .line 120
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->getPackageSig()[B

    move-result-object v3

    const-string v4, "test@openkeychain.org"

    const/4 v5, 0x1

    .line 119
    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectSignKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method final synthetic lambda$createView$7$DebugActionsActivity(Landroid/view/View;)V
    .locals 6

    .line 124
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    .line 125
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "org.sufficientlysecure.keychain"

    const/4 v5, 0x1

    new-array v5, v5, [J

    aput-wide v1, v5, v0

    invoke-virtual {p1, v3, v4, v5}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createRequestKeyPermissionPendingIntent(Landroid/content/Intent;Ljava/lang/String;[J)Landroid/app/PendingIntent;

    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method final synthetic lambda$createView$8$DebugActionsActivity(Landroid/view/View;)V
    .locals 3

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "dupl@mugenguild.com"

    .line 131
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->pendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    const-string v1, "org.sufficientlysecure.keychain"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2, p1}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createDeduplicatePendingIntent(Ljava/lang/String;Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;->startPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    move-object/16 p0, p3

    .line 171
    invoke-super {v3, v4, v5, p0}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v5, v4, :cond_0

    const-string v4, "Ok"

    .line 174
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    const-string v4, "result: ok, intent: %s, extras: %s"

    .line 175
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v4, "result: cancelled, intent: %s, extras: %s"

    .line 177
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ne v5, v4, :cond_2

    const-string v4, "Ok"

    .line 181
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    const-string v4, "result: ok, intent: null"

    .line 182
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v4, "result: cancelled, intent: null"

    .line 184
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 65
    invoke-super {v0, v1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DebugActionsActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
