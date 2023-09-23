.class final Lcom/cocosw/bottomsheet/BottomSheetHelper$1;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocosw/bottomsheet/BottomSheetHelper;->shareAction(Landroid/app/Activity;Landroid/content/Intent;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;->val$list:Ljava/util/List;

    iput-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;->val$list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 50
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    iget-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
