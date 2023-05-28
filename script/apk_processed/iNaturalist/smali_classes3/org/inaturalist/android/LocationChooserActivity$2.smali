.class Lorg/inaturalist/android/LocationChooserActivity$2;
.super Ljava/lang/Object;
.source "LocationChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/LocationChooserActivity;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/LocationChooserActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/LocationChooserActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$2;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
