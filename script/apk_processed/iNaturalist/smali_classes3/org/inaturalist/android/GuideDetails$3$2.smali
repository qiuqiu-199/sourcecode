.class Lorg/inaturalist/android/GuideDetails$3$2;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/GuideDetails$3;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$3;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$3$2;->this$1:Lorg/inaturalist/android/GuideDetails$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
