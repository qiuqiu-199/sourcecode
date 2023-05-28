.class Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProjectNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProjectNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectNewsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectNews;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ProjectNews;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;->this$0:Lorg/inaturalist/android/ProjectNews;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ProjectNews;Lorg/inaturalist/android/ProjectNews$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;-><init>(Lorg/inaturalist/android/ProjectNews;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 206
    iget-object p2, p0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;->this$0:Lorg/inaturalist/android/ProjectNews;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectNews;->access$100(Lorg/inaturalist/android/ProjectNews;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p2

    iget-object v1, p0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;->this$0:Lorg/inaturalist/android/ProjectNews;

    const v2, 0x7f100108

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ProjectNews;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "is_shared_on_app"

    .line 210
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;->this$0:Lorg/inaturalist/android/ProjectNews;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectNews;->access$200(Lorg/inaturalist/android/ProjectNews;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "results"

    .line 216
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    .line 219
    :goto_0
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 220
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_2

    .line 223
    iget-object p1, p0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;->this$0:Lorg/inaturalist/android/ProjectNews;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectNews;->access$300(Lorg/inaturalist/android/ProjectNews;)V

    return-void

    .line 227
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 229
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 230
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 232
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;->this$0:Lorg/inaturalist/android/ProjectNews;

    iput-object p2, p1, Lorg/inaturalist/android/ProjectNews;->mNews:Ljava/util/ArrayList;

    .line 237
    iget-object p1, p0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;->this$0:Lorg/inaturalist/android/ProjectNews;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectNews;->access$300(Lorg/inaturalist/android/ProjectNews;)V

    return-void
.end method
