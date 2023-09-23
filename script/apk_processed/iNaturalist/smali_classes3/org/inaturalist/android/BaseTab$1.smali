.class Lorg/inaturalist/android/BaseTab$1;
.super Ljava/lang/Object;
.source "BaseTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseTab;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseTab;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/BaseTab;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/inaturalist/android/BaseTab$1;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 276
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$1;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BaseTab;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
