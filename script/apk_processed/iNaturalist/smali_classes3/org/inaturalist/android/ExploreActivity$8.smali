.class Lorg/inaturalist/android/ExploreActivity$8;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->refreshResultsView(ILjava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;

.field final synthetic val$adapterClass:Ljava/lang/Class;

.field final synthetic val$resultsType:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;ILjava/lang/Class;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iput p2, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    iput-object p3, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$adapterClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 956
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1900(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget v1, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    iget v2, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    aget v0, v0, v2

    if-le v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1900(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget v1, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 962
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1900(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget v2, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$adapterClass:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    aput-object v5, v4, v7

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ExploreActivity;->access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    aget-object v5, v5, v6

    check-cast v5, Ljava/util/ArrayList;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    aput-object v1, v0, v2

    .line 963
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$8;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreActivity;->access$1900(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget v2, p0, Lorg/inaturalist/android/ExploreActivity$8;->val$resultsType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 965
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
