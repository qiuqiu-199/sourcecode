.class Lorg/inaturalist/android/AnalyticsClient$1;
.super Ljava/lang/Object;
.source "AnalyticsClient.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/AnalyticsClient;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/AnalyticsClient;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/AnalyticsClient;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/inaturalist/android/AnalyticsClient$1;->this$0:Lorg/inaturalist/android/AnalyticsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/inaturalist/android/AnalyticsClient$1;->this$0:Lorg/inaturalist/android/AnalyticsClient;

    invoke-static {v0, p1}, Lorg/inaturalist/android/AnalyticsClient;->access$002(Lorg/inaturalist/android/AnalyticsClient;Landroid/app/Activity;)Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
