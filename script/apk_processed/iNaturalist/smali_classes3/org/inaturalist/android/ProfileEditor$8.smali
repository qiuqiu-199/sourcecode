.class Lorg/inaturalist/android/ProfileEditor$8;
.super Ljava/lang/Object;
.source "ProfileEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProfileEditor;->removePhoto()V
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

    .line 446
    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor$8;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 449
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$8;->this$0:Lorg/inaturalist/android/ProfileEditor;

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/inaturalist/android/ProfileEditor;->mFileUri:Landroid/net/Uri;

    .line 450
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$8;->this$0:Lorg/inaturalist/android/ProfileEditor;

    iput-object p2, p1, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    .line 451
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$8;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ProfileEditor;->access$300(Lorg/inaturalist/android/ProfileEditor;)V

    return-void
.end method
