.class Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$3;
.super Ljava/lang/Object;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Lorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$3;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProjectFieldsResults(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/inaturalist/android/ProjectFieldValue;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$3;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$502(Lorg/inaturalist/android/ProjectSelectorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 188
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$3;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$3;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iput-object p2, p1, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    :cond_0
    return-void
.end method
