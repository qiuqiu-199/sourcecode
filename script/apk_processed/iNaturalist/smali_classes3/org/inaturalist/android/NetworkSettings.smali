.class public Lorg/inaturalist/android/NetworkSettings;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NetworkSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkSettings"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mFormerSelectedNetworkRadioButton:I

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mMoreInfo:Landroid/view/ViewGroup;

.field private mNetworkRadioButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworks:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/NetworkSettings;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/inaturalist/android/NetworkSettings;->mNetworkRadioButtons:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/NetworkSettings;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/NetworkSettings;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/inaturalist/android/NetworkSettings;->mFormerSelectedNetworkRadioButton:I

    return p0
.end method

.method static synthetic access$202(Lorg/inaturalist/android/NetworkSettings;I)I
    .locals 0

    .line 31
    iput p1, p0, Lorg/inaturalist/android/NetworkSettings;->mFormerSelectedNetworkRadioButton:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 78
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getIntent()Landroid/content/Intent;

    const p1, 0x7f0d006c

    .line 79
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/NetworkSettings;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f1001bc

    .line 83
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/NetworkSettings;->setTitle(I)V

    const p1, 0x7f0a0241

    .line 85
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/NetworkSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mNetworks:Landroid/widget/RadioGroup;

    const p1, 0x7f0a021c

    .line 86
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/NetworkSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mMoreInfo:Landroid/view/ViewGroup;

    .line 88
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 93
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mMoreInfo:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/NetworkSettings$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/NetworkSettings$1;-><init>(Lorg/inaturalist/android/NetworkSettings;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getINatNetworks()[Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v1, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/inaturalist/android/NetworkSettings;->mNetworkRadioButtons:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 108
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    const-string v5, "layout_inflater"

    .line 110
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/NetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f0d008c

    const/4 v7, 0x0

    .line 111
    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a03ab

    .line 113
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0360

    .line 114
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a02d6

    .line 115
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/AppCompatRadioButton;

    .line 117
    iget-object v9, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v6, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inat_country_name_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v8, v3}, Landroid/support/v7/widget/AppCompatRadioButton;->setId(I)V

    .line 122
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x2

    new-array v9, v7, [[I

    new-array v10, v0, [I

    const v11, -0x10100a0

    aput v11, v10, v2

    aput-object v10, v9, v2

    new-array v10, v0, [I

    const v11, 0x10100a0

    aput v11, v10, v2

    aput-object v10, v9, v0

    new-array v7, v7, [I

    const v10, -0xbbbbbc

    aput v10, v7, v2

    .line 128
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060086

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    aput v10, v7, v0

    invoke-direct {v6, v9, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 131
    invoke-virtual {v8, v6}, Landroid/support/v7/widget/AppCompatRadioButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 134
    new-instance v6, Lorg/inaturalist/android/NetworkSettings$2;

    invoke-direct {v6, p0, v3}, Lorg/inaturalist/android/NetworkSettings$2;-><init>(Lorg/inaturalist/android/NetworkSettings;I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v6, p0, Lorg/inaturalist/android/NetworkSettings;->mNetworkRadioButtons:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v6, p0, Lorg/inaturalist/android/NetworkSettings;->mNetworks:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 150
    aget-object v5, p1, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 155
    :cond_2
    iput v4, p0, Lorg/inaturalist/android/NetworkSettings;->mFormerSelectedNetworkRadioButton:I

    .line 156
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings;->mNetworkRadioButtons:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public onINatNetworkRadioButtonClicked(I)V
    .locals 9

    .line 160
    iget-object v0, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getINatNetworks()[Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "Settings Network Change Began"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 165
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Partner"

    .line 166
    iget-object v3, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v2

    const-string v3, "Partner Alert Presented"

    invoke-virtual {v2, v3, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 173
    :goto_0
    new-instance v6, Lorg/inaturalist/android/NetworkSettings$3;

    invoke-direct {v6, p0, v0, p1}, Lorg/inaturalist/android/NetworkSettings$3;-><init>(Lorg/inaturalist/android/NetworkSettings;[Ljava/lang/String;I)V

    .line 197
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d002c

    const/4 v3, 0x0

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0a03ae

    .line 199
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 201
    iget-object v2, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inat_logo_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "drawable"

    invoke-virtual {v5, v2, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 204
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v2, p0, Lorg/inaturalist/android/NetworkSettings;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    iget-object v1, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alert_message_use_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f1003b1

    const v8, 0x7f100071

    move-object v5, v6

    invoke-virtual/range {v2 .. v8}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 212
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 217
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 218
    iget-object v0, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/inaturalist/android/NetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/NetworkSettings;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 48
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 56
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
