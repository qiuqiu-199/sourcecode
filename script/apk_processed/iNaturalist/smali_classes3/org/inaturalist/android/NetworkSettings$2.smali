.class Lorg/inaturalist/android/NetworkSettings$2;
.super Ljava/lang/Object;
.source "NetworkSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/NetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/NetworkSettings;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/NetworkSettings;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/inaturalist/android/NetworkSettings$2;->this$0:Lorg/inaturalist/android/NetworkSettings;

    iput p2, p0, Lorg/inaturalist/android/NetworkSettings$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 138
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/NetworkSettings$2;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {v1}, Lorg/inaturalist/android/NetworkSettings;->access$000(Lorg/inaturalist/android/NetworkSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 139
    iget v1, p0, Lorg/inaturalist/android/NetworkSettings$2;->val$index:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/NetworkSettings$2;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {v1}, Lorg/inaturalist/android/NetworkSettings;->access$000(Lorg/inaturalist/android/NetworkSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 141
    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$2;->this$0:Lorg/inaturalist/android/NetworkSettings;

    iget v0, p0, Lorg/inaturalist/android/NetworkSettings$2;->val$index:I

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/NetworkSettings;->onINatNetworkRadioButtonClicked(I)V

    return-void
.end method
