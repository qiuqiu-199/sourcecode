.class Lorg/inaturalist/android/BaseFragmentActivity$6;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseFragmentActivity;->showNewObsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/BaseFragmentActivity;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$6;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 312
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$6;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-static {p1}, Lorg/inaturalist/android/BaseFragmentActivity;->access$300(Lorg/inaturalist/android/BaseFragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 313
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "New Obs - Cancel"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$6;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->access$302(Lorg/inaturalist/android/BaseFragmentActivity;Z)Z

    return-void
.end method
