.class Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteFileDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

.field final synthetic val$deleteFileNameMap:Ljava/util/HashMap;

.field final synthetic val$deleteUris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 93
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->val$deleteUris:Ljava/util/ArrayList;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->val$deleteFileNameMap:Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;Ljava/util/ArrayList;Ljava/util/HashMap;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 97
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->dismiss()V

    .line 99
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->val$deleteUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 105
    :try_start_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Catched Exception, can happen when delete is not supported!"

    .line 109
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_0
    :try_start_1
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v2, :cond_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Catched Exception, can happen when delete is not supported!"

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->val$deleteFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 133
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110177

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_5
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f110418

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->val$deleteUris:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->val$deleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v1, 0x1

    aput-object v7, v4, v1

    const/4 v7, 0x2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 141
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 143
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 146
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;

    move-result-object v7

    invoke-interface {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;->onDeleted()V

    :cond_6
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
