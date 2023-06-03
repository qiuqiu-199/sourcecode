.class Lorg/inaturalist/android/BaseFragmentActivity$7;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 281
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 285
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->access$302(Lorg/inaturalist/android/BaseFragmentActivity;Z)Z

    const p1, 0x7f0a008d

    const/16 v1, 0x1000

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a039a

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a03ca

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "New Obs - Library Start"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 298
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.INSERT"

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-class v4, Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p1, p2, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "choose_photo"

    .line 299
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    iget-object p2, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {p2, p1, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "New Obs - No Photo"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-class v4, Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p2, v0, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "New Obs - Shutter"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 291
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.INSERT"

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-class v4, Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p1, p2, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "take_photo"

    .line 292
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    iget-object p2, p0, Lorg/inaturalist/android/BaseFragmentActivity$7;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {p2, p1, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
