.class Lorg/inaturalist/android/BaseTab$5;
.super Ljava/lang/Object;
.source "BaseTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseTab;->toggleLoading(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseTab;

.field final synthetic val$isLoading:Z


# direct methods
.method constructor <init>(Lorg/inaturalist/android/BaseTab;Z)V
    .locals 0

    .line 363
    iput-object p1, p0, Lorg/inaturalist/android/BaseTab$5;->this$0:Lorg/inaturalist/android/BaseTab;

    iput-boolean p2, p0, Lorg/inaturalist/android/BaseTab$5;->val$isLoading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 366
    iget-boolean v0, p0, Lorg/inaturalist/android/BaseTab$5;->val$isLoading:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$5;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$700(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$5;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$600(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$5;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$600(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$5;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$700(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method
