.class Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissionsGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/MissionsGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissionsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsGridActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/MissionsGridActivity;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/MissionsGridActivity;Lorg/inaturalist/android/MissionsGridActivity$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;-><init>(Lorg/inaturalist/android/MissionsGridActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    .line 248
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 250
    iget-object p1, p0, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionsGridActivity;->access$100(Lorg/inaturalist/android/MissionsGridActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    const v2, 0x7f100109

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/MissionsGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "taxon_id"

    .line 254
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 255
    iget-object p2, p0, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    iget p2, p2, Lorg/inaturalist/android/MissionsGridActivity;->mTaxonId:I

    if-eq p2, p1, :cond_1

    return-void

    .line 261
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    const-string p2, "missions_by_taxon_result"

    invoke-static {p1, p2}, Lorg/inaturalist/android/MissionsGridActivity;->access$200(Lorg/inaturalist/android/MissionsGridActivity;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionsGridActivity;->access$300(Lorg/inaturalist/android/MissionsGridActivity;)V

    return-void
.end method
