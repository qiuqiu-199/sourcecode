.class Lorg/inaturalist/android/ObservationEditor$12;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 691
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 693
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    .line 694
    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    .line 695
    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    .line 696
    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 698
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 702
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 704
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 705
    new-instance v1, Lorg/inaturalist/android/ObservationEditor$12$1;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/ObservationEditor$12$1;-><init>(Lorg/inaturalist/android/ObservationEditor$12;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 770
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
