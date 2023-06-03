.class public Lcom/google/android/gms/appinvite/PreviewActivity;
.super Landroid/app/Activity;


# static fields
.field public static final ACTION_PREVIEW:Ljava/lang/String; = "com.google.android.gms.appinvite.ACTION_PREVIEW"

.field public static final EXTRA_LAYOUT_RES_ID:Ljava/lang/String; = "com.google.android.gms.appinvite.LAYOUT_RES_ID"

.field public static final EXTRA_TABS:Ljava/lang/String; = "com.google.android.gms.appinvite.TABS"

.field public static final EXTRA_VIEWS:Ljava/lang/String; = "com.google.android.gms.appinvite.VIEWS"

.field public static final KEY_TAB_CONTENT_ID:Ljava/lang/String; = "tabContentId"

.field public static final KEY_TAB_TAG:Ljava/lang/String; = "tabTag"

.field public static final KEY_TEXT_VIEW_IS_TITLE:Ljava/lang/String; = "TextView_isTitle"

.field public static final KEY_TEXT_VIEW_TEXT:Ljava/lang/String; = "TextView_text"

.field public static final KEY_TEXT_VIEW_TEXT_COLOR:Ljava/lang/String; = "TextView_textColor"

.field public static final KEY_VIEW_BACKGROUND_COLOR:Ljava/lang/String; = "View_backgroundColor"

.field public static final KEY_VIEW_ID:Ljava/lang/String; = "View_id"

.field public static final KEY_VIEW_MIN_HEIGHT:Ljava/lang/String; = "View_minHeight"

.field public static final KEY_VIEW_ON_CLICK_LISTENER:Ljava/lang/String; = "View_onClickListener"

.field public static final KEY_WEB_VIEW_DATA:Ljava/lang/String; = "WebView_data"

.field public static final ON_CLICK_LISTENER_CLOSE:Ljava/lang/String; = "close"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private zza(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "com.google.android.gms.appinvite.LAYOUT_RES_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "com.google.android.gms.appinvite.VIEWS"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/appinvite/PreviewActivity;->zza(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private zza(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "View_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "View_onClickListener"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v2, "TextView_isTitle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_2
    const-string v2, "View_backgroundColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_3
    const-string v2, "TextView_textColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v2, "WebView_data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_5
    const-string v2, "TextView_text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_6
    const-string v2, "View_minHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/html; charset=utf-8"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v1, v3, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_1
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/appinvite/PreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_3
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, 0x5a5ddf8

    if-eq v2, v5, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v3, -0x1

    :goto_4
    if-eqz v3, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcom/google/android/gms/appinvite/PreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/appinvite/PreviewActivity$1;-><init>(Lcom/google/android/gms/appinvite/PreviewActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d10aae1 -> :sswitch_6
        -0x1dc0d046 -> :sswitch_5
        -0x6a08bd0 -> :sswitch_4
        0x222fd3c9 -> :sswitch_3
        0x399dd15b -> :sswitch_2
        0x6713bda1 -> :sswitch_1
        0x7277a543 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/appinvite/PreviewActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "com.google.android.gms"

    invoke-virtual {p0}, Lcom/google/android/gms/appinvite/PreviewActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "com.google.android.gms"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/appinvite/PreviewActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/google/android/gms/appinvite/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/appinvite/PreviewActivity;->zza(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/appinvite/PreviewActivity;->finish()V

    return-void

    :cond_1
    const v2, 0x1020012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const v3, 0x1020013

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    const-string v4, "com.google.android.gms.appinvite.TABS"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "tabTag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const-string v6, "tabContentId"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/gms/appinvite/PreviewActivity;->zza(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/appinvite/PreviewActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/appinvite/PreviewActivity;->finish()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/appinvite/PreviewActivity;->finish()V

    return-void
.end method
