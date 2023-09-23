.class Lorg/inaturalist/android/MissionDetails$2;
.super Ljava/lang/Object;
.source "MissionDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetails;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$2;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 225
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Missions - Tap - Wikipedia Article"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 228
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$2;->this$0:Lorg/inaturalist/android/MissionDetails;

    iget-object v0, v0, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "taxon"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$2;->this$0:Lorg/inaturalist/android/MissionDetails;

    iget-object v0, v0, Lorg/inaturalist/android/MissionDetails;->mWikiTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "name"

    .line 234
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p1, " "

    const-string v1, "_"

    .line 237
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$2;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-virtual {v0}, Lorg/inaturalist/android/MissionDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 239
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".wikipedia.org/wiki/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    .line 245
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 247
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$2;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/MissionDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
