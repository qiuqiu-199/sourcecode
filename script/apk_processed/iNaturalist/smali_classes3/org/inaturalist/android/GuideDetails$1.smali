.class Lorg/inaturalist/android/GuideDetails$1;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails;->refreshGuideSideMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$1;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 332
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    const-string v0, "login"

    .line 333
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$1;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v1}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/GuideXML;->getCompiler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$1;->this$0:Lorg/inaturalist/android/GuideDetails;

    const-class v2, Lorg/inaturalist/android/UserProfile;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user"

    .line 335
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 336
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$1;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GuideDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
