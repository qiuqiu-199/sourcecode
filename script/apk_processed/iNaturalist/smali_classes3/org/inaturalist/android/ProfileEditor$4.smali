.class Lorg/inaturalist/android/ProfileEditor$4;
.super Ljava/lang/Object;
.source "ProfileEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProfileEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProfileEditor;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor$4;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 257
    new-instance p1, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor$4;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-direct {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor$4;->this$0:Lorg/inaturalist/android/ProfileEditor;

    iget-object v0, v0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f0e0014

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0013

    :goto_0
    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/ProfileEditor$4$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProfileEditor$4$1;-><init>(Lorg/inaturalist/android/ProfileEditor$4;)V

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    return-void
.end method
