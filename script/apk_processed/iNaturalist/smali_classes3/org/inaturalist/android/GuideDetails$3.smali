.class Lorg/inaturalist/android/GuideDetails$3;
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

    .line 374
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 377
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$300(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    const v1, 0x7f10013f

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GuideDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v2}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/inaturalist/android/GuideXML;->getNgzFileSize()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/GuideDetails$3$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/GuideDetails$3$1;-><init>(Lorg/inaturalist/android/GuideDetails$3;)V

    new-instance v2, Lorg/inaturalist/android/GuideDetails$3$2;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/GuideDetails$3$2;-><init>(Lorg/inaturalist/android/GuideDetails$3;)V

    const v3, 0x7f10005e

    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/inaturalist/android/ActivityHelper;->confirm(ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
