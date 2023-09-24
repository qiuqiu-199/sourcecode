.class Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProjectSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProjectSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectReceiver"
.end annotation


# instance fields
.field private mProjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/ProjectSelectorActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity;Lorg/inaturalist/android/ProjectSelectorActivity$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p1, "projects_result"

    .line 96
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    .line 97
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p2

    .line 103
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$000(Lorg/inaturalist/android/ProjectSelectorActivity;)Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 113
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    new-instance v2, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$1;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v3, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "project_type"

    const-string v6, ""

    .line 133
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "collection"

    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "umbrella"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 137
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    :cond_3
    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 142
    :cond_4
    iput-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    .line 144
    :try_start_1
    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "{ \"is_header\": true, \"title\": \"%s\" }"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    const v7, 0x7f1000b1

    invoke-virtual {v6, v7}, Lorg/inaturalist/android/ProjectSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 146
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    :goto_4
    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/16 v1, 0x8

    if-lez p2, :cond_6

    .line 152
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$100(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 155
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean p2, p2, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz p2, :cond_5

    .line 156
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 159
    :cond_5
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    new-instance v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v3, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->mProjects:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p2, v0}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$302(Lorg/inaturalist/android/ProjectSelectorActivity;Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;)Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    .line 160
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$300(Lorg/inaturalist/android/ProjectSelectorActivity;)Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object p2

    new-instance v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_5

    .line 177
    :cond_6
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$100(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/TextView;

    move-result-object p2

    const v2, 0x7f100279

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$100(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 183
    :goto_5
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget v0, v0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationId:I

    new-instance v1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$3;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;)V

    invoke-static {p2, p1, v0, v1}, Lorg/inaturalist/android/ProjectFieldViewer;->getProjectFields(Landroid/content/Context;Ljava/util/List;ILorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;)V

    return-void
.end method
