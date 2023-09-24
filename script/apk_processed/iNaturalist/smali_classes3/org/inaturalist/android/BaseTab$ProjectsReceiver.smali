.class Lorg/inaturalist/android/BaseTab$ProjectsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/BaseTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseTab;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/BaseTab;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/BaseTab;Lorg/inaturalist/android/BaseTab$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;-><init>(Lorg/inaturalist/android/BaseTab;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "INAT"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v1}, Lorg/inaturalist/android/BaseTab;->getFilterResultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {p1}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$000(Lorg/inaturalist/android/BaseTab;)Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 86
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {p1}, Lorg/inaturalist/android/BaseTab;->getFilterResultParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 87
    instance-of p2, p1, Lorg/inaturalist/android/SerializableJSONArray;

    if-eqz p2, :cond_0

    .line 88
    move-object v1, p1

    check-cast v1, Lorg/inaturalist/android/SerializableJSONArray;

    goto :goto_1

    :cond_0
    const-string p2, "INAT"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid non array convertible response from server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object p1, v1

    goto :goto_2

    .line 95
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    iget-object p1, p1, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object p2, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {p2}, Lorg/inaturalist/android/BaseTab;->getFilterResultName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    .line 96
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    iget-object p2, p2, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v2, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v2}, Lorg/inaturalist/android/BaseTab;->getFilterResultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_2
    if-nez p1, :cond_2

    .line 100
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    .line 101
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {p1}, Lorg/inaturalist/android/BaseTab;->access$100(Lorg/inaturalist/android/BaseTab;)V

    return-void

    .line 105
    :cond_2
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    .line 109
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {p1}, Lorg/inaturalist/android/BaseTab;->access$100(Lorg/inaturalist/android/BaseTab;)V

    return-void

    .line 113
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_4

    .line 115
    :try_start_1
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    iget-object p2, p2, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 117
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 121
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {p1}, Lorg/inaturalist/android/BaseTab;->access$100(Lorg/inaturalist/android/BaseTab;)V

    return-void
.end method
