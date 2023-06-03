.class Lorg/inaturalist/android/ProfileEditor$4$1;
.super Ljava/lang/Object;
.source "ProfileEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProfileEditor$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProfileEditor$4;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProfileEditor$4;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor$4$1;->this$1:Lorg/inaturalist/android/ProfileEditor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const p1, 0x7f0a008d

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a02e3

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a03ca

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$4$1;->this$1:Lorg/inaturalist/android/ProfileEditor$4;

    iget-object p1, p1, Lorg/inaturalist/android/ProfileEditor$4;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ProfileEditor;->access$100(Lorg/inaturalist/android/ProfileEditor;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$4$1;->this$1:Lorg/inaturalist/android/ProfileEditor$4;

    iget-object p1, p1, Lorg/inaturalist/android/ProfileEditor$4;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProfileEditor;->removePhoto()V

    goto :goto_0

    .line 263
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$4$1;->this$1:Lorg/inaturalist/android/ProfileEditor$4;

    iget-object p1, p1, Lorg/inaturalist/android/ProfileEditor$4;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ProfileEditor;->access$000(Lorg/inaturalist/android/ProfileEditor;)V

    :goto_0
    return-void
.end method
