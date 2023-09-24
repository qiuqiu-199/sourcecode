.class Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MentionsAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/MentionsAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSearchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MentionsAutoComplete;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/MentionsAutoComplete;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/MentionsAutoComplete;Lorg/inaturalist/android/MentionsAutoComplete$1;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;-><init>(Lorg/inaturalist/android/MentionsAutoComplete;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "query"

    .line 245
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 246
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$200(Lorg/inaturalist/android/MentionsAutoComplete;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$500(Lorg/inaturalist/android/MentionsAutoComplete;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "results"

    .line 259
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_0
    if-eqz p1, :cond_2

    const-string p2, "results"

    .line 265
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p2

    const-string v2, "total_results"

    .line 266
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 268
    invoke-virtual {p2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_3

    .line 273
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1, v1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$302(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 274
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$400(Lorg/inaturalist/android/MentionsAutoComplete;)V

    return-void

    .line 278
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 282
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 283
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 285
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 289
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1, p2}, Lorg/inaturalist/android/MentionsAutoComplete;->access$302(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 290
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$400(Lorg/inaturalist/android/MentionsAutoComplete;)V

    return-void

    .line 247
    :cond_5
    :goto_4
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1, v1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$302(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 248
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$400(Lorg/inaturalist/android/MentionsAutoComplete;)V

    return-void
.end method
