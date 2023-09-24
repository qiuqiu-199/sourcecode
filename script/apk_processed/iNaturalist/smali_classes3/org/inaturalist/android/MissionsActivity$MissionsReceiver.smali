.class Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/MissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissionsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/MissionsActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/MissionsActivity;Lorg/inaturalist/android/MissionsActivity$1;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;-><init>(Lorg/inaturalist/android/MissionsActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 198
    iget-object p2, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {p2}, Lorg/inaturalist/android/MissionsActivity;->access$100(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p2

    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    const v3, 0x7f100109

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/MissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "is_shared_on_app"

    .line 202
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionsActivity;->access$200(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "recommended_missions_result"

    .line 210
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 215
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    .line 216
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionsActivity;->access$300(Lorg/inaturalist/android/MissionsActivity;)V

    return-void

    .line 221
    :cond_2
    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string p2, "results"

    .line 222
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 224
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_3

    .line 227
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionsActivity;->access$300(Lorg/inaturalist/android/MissionsActivity;)V

    return-void

    .line 231
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 233
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 234
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 236
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iput-object p2, p1, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    .line 242
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iget-object p1, p1, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 244
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iget p2, p1, Lorg/inaturalist/android/MissionsActivity;->mMissionsCurrentExpansionLevel:I

    add-int/2addr p2, v1

    iput p2, p1, Lorg/inaturalist/android/MissionsActivity;->mMissionsCurrentExpansionLevel:I

    .line 245
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iget p1, p1, Lorg/inaturalist/android/MissionsActivity;->mMissionsCurrentExpansionLevel:I

    sget-object p2, Lorg/inaturalist/android/MissionsActivity;->RECOMMENDED_MISSIONS_EXPANSION:[F

    array-length p2, p2

    if-ge p1, p2, :cond_5

    .line 248
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    .line 249
    sget-object p1, Lorg/inaturalist/android/MissionsActivity;->RECOMMENDED_MISSIONS_EXPANSION:[F

    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iget v0, v0, Lorg/inaturalist/android/MissionsActivity;->mMissionsCurrentExpansionLevel:I

    aget p1, p1, v0

    .line 251
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_RECOMMENDED_MISSIONS:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, p2, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "username"

    .line 252
    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {v1}, Lorg/inaturalist/android/MissionsActivity;->access$200(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "expand_location_by_degrees"

    .line 253
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 254
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 258
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionsActivity;->access$300(Lorg/inaturalist/android/MissionsActivity;)V

    return-void
.end method
