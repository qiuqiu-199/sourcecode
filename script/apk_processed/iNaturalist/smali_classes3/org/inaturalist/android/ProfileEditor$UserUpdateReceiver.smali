.class Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProfileEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProfileEditor;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ProfileEditor;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ProfileEditor;Lorg/inaturalist/android/ProfileEditor$1;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "ProfileEditor"

    const-string v0, "Got ACTION_UPDATE_USER_DETAILS_RESULT"

    .line 465
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "user"

    .line 466
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_0

    .line 469
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;->this$0:Lorg/inaturalist/android/ProfileEditor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/inaturalist/android/ProfileEditor;->access$400(Lorg/inaturalist/android/ProfileEditor;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "errors"

    .line 471
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "errors"

    .line 473
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 474
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 476
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 479
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "; "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 484
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/inaturalist/android/ProfileEditor;->access$400(Lorg/inaturalist/android/ProfileEditor;Ljava/lang/String;)V

    return-void

    .line 488
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ProfileEditor;->access$500(Lorg/inaturalist/android/ProfileEditor;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    .line 489
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ProfileEditor;->access$300(Lorg/inaturalist/android/ProfileEditor;)V

    .line 490
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProfileEditor;->finish()V

    return-void
.end method
