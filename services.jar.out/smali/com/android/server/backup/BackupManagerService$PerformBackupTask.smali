.class Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static synthetic -com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I = null

.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$BackupState:[I

.field mAgentBinder:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

.field mFinished:Z

.field mJournal:Ljava/io/File;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom_android_server_backup_BackupManagerService$BackupStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$BackupState;->values()[Lcom/android/server/backup/BackupManagerService$BackupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2451
    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2453
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 2454
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    .line 2455
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    .line 2457
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    .line 2459
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    .line 2462
    const-string/jumbo v0, "STATE => INITIAL"

    invoke-virtual {p1, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2452
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    .prologue
    .line 2854
    :try_start_0
    const-string/jumbo v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 2855
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2861
    .local v0, "checksum":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2862
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 2863
    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2862
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2856
    .end local v0    # "checksum":[B
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 2857
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v6, "Unable to use SHA-1!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    const-string/jumbo v5, "00"

    return-object v5

    .line 2865
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "checksum":[B
    .restart local v2    # "i":I
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2871
    const/16 v16, 0x0

    .line 2870
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v15

    .line 2873
    .local v15, "widgetState":[B
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_widget"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2874
    .local v14, "widgetFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v11

    .line 2883
    .local v11, "priorStateExists":Z
    if-nez v11, :cond_0

    if-nez v15, :cond_0

    .line 2885
    return-void

    .line 2892
    :cond_0
    const/4 v8, 0x0

    .line 2893
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 2894
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v8

    .line 2895
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 2897
    const/16 v17, 0x0

    const/4 v2, 0x0

    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 2898
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2899
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 2901
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .end local v6    # "in":Ljava/io/DataInputStream;
    move-result-object v10

    .line 2902
    .local v10, "priorChecksum":Ljava/lang/String;
    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object/from16 v16, v17

    :cond_3
    :goto_1
    if-eqz v16, :cond_9

    throw v16

    :catch_0
    move-exception v17

    goto :goto_0

    :catch_1
    move-exception v16

    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v16, v17

    goto :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "priorChecksum":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v16

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_2
    :try_start_5
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v17

    move-object/from16 v19, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v19

    :goto_3
    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object/from16 v18, v17

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    move-object/from16 v17, v18

    :cond_7
    :goto_5
    if-eqz v17, :cond_8

    throw v17

    :catch_3
    move-exception v18

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v18, v17

    goto :goto_4

    :catch_4
    move-exception v17

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v17, v18

    goto :goto_5

    :cond_8
    throw v16

    .line 2903
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "priorChecksum":Ljava/lang/String;
    :cond_9
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2905
    return-void

    .line 2910
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v8    # "newChecksum":Ljava/lang/String;
    .end local v10    # "priorChecksum":Ljava/lang/String;
    :cond_a
    new-instance v9, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 2911
    .local v9, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v15, :cond_14

    .line 2912
    const/16 v17, 0x0

    const/4 v4, 0x0

    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 2913
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    :try_start_8
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2914
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2916
    .local v13, "stateOut":Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {v13, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2917
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    if-eqz v13, :cond_b

    :try_start_b
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :cond_c
    move-object/from16 v16, v17

    :cond_d
    :goto_7
    if-eqz v16, :cond_13

    throw v16

    :catch_5
    move-exception v17

    goto :goto_6

    :catch_6
    move-exception v16

    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v16, v17

    goto :goto_7

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "stateOut":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v16

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    :goto_8
    :try_start_d
    throw v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v17

    move-object/from16 v19, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v19

    :goto_9
    if-eqz v12, :cond_e

    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    :cond_e
    move-object/from16 v18, v17

    :cond_f
    :goto_a
    if-eqz v4, :cond_10

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_10
    move-object/from16 v17, v18

    :cond_11
    :goto_b
    if-eqz v17, :cond_12

    throw v17

    :catch_8
    move-exception v18

    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v18, v17

    goto :goto_a

    :catch_9
    move-exception v17

    if-eqz v18, :cond_11

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v17, v18

    goto :goto_b

    :cond_12
    throw v16

    .line 2919
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :cond_13
    const-string/jumbo v16, "\uffed\uffedwidget"

    array-length v0, v15

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 2920
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 2869
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    :goto_c
    return-void

    .line 2923
    :cond_14
    const-string/jumbo v16, "\uffed\uffedwidget"

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 2924
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_c

    .line 2917
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v16

    goto :goto_9

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v16

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v16

    move-object v12, v13

    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    :catch_a
    move-exception v16

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :catch_b
    move-exception v16

    move-object v12, v13

    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 2902
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "newChecksum":Ljava/lang/String;
    :catchall_5
    move-exception v16

    goto/16 :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v16

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catchall_7
    move-exception v16

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    :catch_c
    move-exception v16

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_d
    move-exception v16

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method agentErrorCleanup()V
    .locals 1

    .prologue
    .line 3110
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3111
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3112
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 3114
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 3109
    return-void

    .line 3114
    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_0
.end method

.method beginBackup()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 2492
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2494
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "beginBackup: ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2495
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "req$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2496
    .local v5, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2497
    iget-object v8, v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2499
    .end local v5    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_0
    const-string/jumbo v8, " ]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2503
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2504
    iput v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2507
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2508
    const-string/jumbo v8, "PerformBackupTask"

    const-string/jumbo v9, "Backup begun with an empty queue - nothing to do."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "queue empty at begin"

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2510
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2511
    return-void

    .line 2517
    :cond_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 2523
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 2524
    const-string/jumbo v9, "@pm@"

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2528
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2533
    :cond_2
    const-string/jumbo v8, "PerformBackupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Beginning backup of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " targets"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v9, "@pm@"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2537
    .local v4, "pmState":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v7

    .line 2538
    .local v7, "transportName":Ljava/lang/String;
    const/16 v8, 0xb05

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2541
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v8, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    .line 2542
    const-string/jumbo v8, "PerformBackupTask"

    const-string/jumbo v9, "Initializing (wiping) backup state and transport storage"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initializing transport "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2544
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2545
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2547
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "transport.initializeDevice() == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2548
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v8, :cond_8

    .line 2549
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v9, 0xb0b

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2561
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v8, :cond_4

    .line 2562
    new-instance v3, Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 2563
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2562
    invoke-direct {v3, v8}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    .line 2564
    .local v3, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string/jumbo v8, "@pm@"

    .line 2565
    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 2564
    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2566
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PMBA invoke: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2571
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2574
    .end local v3    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    :cond_4
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v9, -0x3e9

    if-ne v8, v9, :cond_5

    .line 2578
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb0a

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2588
    :cond_5
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exiting prelim: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2589
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v8, :cond_6

    .line 2592
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2593
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2490
    .end local v7    # "transportName":Ljava/lang/String;
    :cond_6
    :goto_3
    return-void

    .line 2523
    .end local v4    # "pmState":Ljava/io/File;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 2551
    .restart local v4    # "pmState":Ljava/io/File;
    .restart local v7    # "transportName":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string/jumbo v8, "(initialize)"

    const/16 v9, 0xb06

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2552
    const-string/jumbo v8, "PerformBackupTask"

    const-string/jumbo v9, "Transport error in initializeDevice()"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2580
    .end local v7    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2581
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "PerformBackupTask"

    const-string/jumbo v9, "Error in backup thread"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2582
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in backup thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2583
    const/16 v8, -0x3e8

    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2588
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exiting prelim: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2589
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v8, :cond_6

    .line 2592
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2593
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto :goto_3

    .line 2584
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 2588
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exiting prelim: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2589
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v9, :cond_9

    .line 2592
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2593
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2584
    :cond_9
    throw v8
.end method

.method clearAgentState()V
    .locals 5

    .prologue
    .line 3119
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3120
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3121
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3122
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3126
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3127
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 3131
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    .line 3132
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbinding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3134
    :try_start_4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3118
    :cond_3
    :goto_3
    return-void

    .line 3122
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 3135
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 3121
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 3120
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 3119
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method clearMetadata()V
    .locals 3

    .prologue
    .line 2767
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2768
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2766
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 2469
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-getcom_android_server_backup_BackupManagerService$BackupStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2468
    :goto_0
    return-void

    .line 2471
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->beginBackup()V

    goto :goto_0

    .line 2475
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeNextAgent()V

    goto :goto_0

    .line 2479
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->finalizeBackup()V

    .line 2483
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    goto :goto_0

    .line 2481
    :cond_0
    const-string/jumbo v0, "PerformBackupTask"

    const-string/jumbo v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$BackupState;

    .prologue
    .line 3142
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "executeNextState => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3143
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3144
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3145
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3139
    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 4
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2844
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2842
    :goto_0
    return-void

    .line 2845
    :catch_0
    move-exception v0

    .line 2846
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method finalizeBackup()V
    .locals 6

    .prologue
    .line 2720
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "finishing"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2726
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2733
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v1, :cond_1

    .line 2734
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "success; recording token"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2736
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 2737
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2749
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 2750
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v3, -0x3e9

    if-ne v1, v3, :cond_2

    .line 2752
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearMetadata()V

    .line 2754
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "init required; rerunning"

    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2755
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->backupNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2760
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2761
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2719
    return-void

    .line 2727
    :cond_3
    const-string/jumbo v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to remove backup journal file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2738
    :catch_0
    move-exception v0

    .line 2741
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "transport threw returning token"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_1

    .line 2748
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleTimeout()V
    .locals 3

    .prologue
    .line 3080
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Timeout backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3082
    const-string/jumbo v1, "timeout"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3081
    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3083
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    .line 3085
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3075
    return-void
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2775
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2778
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    .line 2779
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 2780
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 2783
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2784
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2785
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2787
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v4

    .line 2792
    .local v4, "token":I
    :try_start_0
    const-string/jumbo v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2795
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2796
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2802
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    .line 2803
    const/high16 v1, 0x18000000

    .line 2802
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2806
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 2807
    const/high16 v1, 0x3c000000    # 0.0078125f

    .line 2806
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2811
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2812
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELinux restorecon failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 2816
    const/high16 v1, 0x3c000000    # 0.0078125f

    .line 2815
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2821
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "setting timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2822
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 2823
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "calling agent doBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2824
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2838
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2839
    return v7

    .line 2825
    :catch_0
    move-exception v6

    .line 2826
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error invoking for backup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2828
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 2829
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2828
    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2830
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    .line 2831
    const/16 v0, -0x3eb

    return v0
.end method

.method invokeNextAgent()V
    .locals 12

    .prologue
    const/16 v11, -0x3ec

    const/16 v10, -0x3eb

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 2601
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2602
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invoke q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2606
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2608
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2609
    return-void

    .line 2613
    :cond_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2614
    .local v4, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2616
    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting key/value backup of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2625
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    .line 2626
    const/16 v8, 0x40

    .line 2625
    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2627
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2631
    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2632
    const-string/jumbo v8, " no longer supports backup; skipping"

    .line 2631
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "skipping - not eligible, completion is noop"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2634
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2685
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2689
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_4

    .line 2690
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2691
    .local v3, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2695
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_2

    .line 2698
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2699
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2700
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2711
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2635
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_1
    return-void

    .line 2701
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_2
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_3

    .line 2704
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_0

    .line 2707
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2708
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_0

    .line 2714
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_1

    .line 2638
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2642
    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2643
    const-string/jumbo v8, " requests full-data rather than key/value; skipping"

    .line 2642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "skipping - fullBackupOnly, completion is noop"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2645
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2685
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2689
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_9

    .line 2690
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2691
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2695
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_7

    .line 2698
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2699
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2700
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2711
    :cond_6
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2646
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_3
    return-void

    .line 2701
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_7
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_8

    .line 2704
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_2

    .line 2707
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2708
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_2

    .line 2714
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_9
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_3

    .line 2649
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x200000

    and-int/2addr v5, v7

    if-eqz v5, :cond_f

    .line 2653
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "skipping - stopped"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2654
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2685
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2689
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_e

    .line 2690
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2691
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2695
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_c

    .line 2698
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2699
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2700
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2711
    :cond_b
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2655
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_5
    return-void

    .line 2701
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_c
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_d

    .line 2704
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_4

    .line 2707
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2708
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_4

    .line 2714
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_e
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_5

    .line 2658
    :cond_f
    const/4 v0, 0x0

    .line 2660
    .local v0, "agent":Landroid/app/IBackupAgent;
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v7, Landroid/os/WorkSource;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v8}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2661
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2662
    const/4 v8, 0x0

    .line 2661
    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 2663
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "agent bound; a? = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_11

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2664
    if-eqz v0, :cond_12

    .line 2665
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2666
    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v5, v0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v5

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2685
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_7
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2689
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_16

    .line 2690
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2691
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2695
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_14

    .line 2698
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2699
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2700
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2711
    :cond_10
    :goto_8
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2600
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_9
    return-void

    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :cond_11
    move v5, v6

    .line 2663
    goto :goto_6

    .line 2672
    :cond_12
    const/16 v5, -0x3eb

    :try_start_4
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 2674
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :catch_0
    move-exception v2

    .line 2676
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_5
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v7, "error in bind/backup"

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2677
    const/16 v5, -0x3eb

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2678
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "agent SE"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 2680
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2681
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v7, "Package does not exist; skipping"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "no such package"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2683
    const/16 v5, -0x3ec

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2685
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2689
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_19

    .line 2690
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2691
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2695
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_17

    .line 2698
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2699
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2700
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2711
    :cond_13
    :goto_a
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto :goto_9

    .line 2701
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_15

    .line 2704
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_8

    .line 2707
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2708
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_8

    .line 2714
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_16
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_9

    .line 2701
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_17
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_18

    .line 2704
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_a

    .line 2707
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2708
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_a

    .line 2714
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_19
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2684
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    .line 2685
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2689
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_1d

    .line 2690
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2691
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2695
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v7, v10, :cond_1b

    .line 2698
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2699
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2700
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2711
    :cond_1a
    :goto_b
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2684
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_c
    throw v5

    .line 2701
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1b
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v7, v11, :cond_1c

    .line 2704
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_b

    .line 2707
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2708
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_b

    .line 2714
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1d
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "expecting completion/timeout callback"

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public operationComplete(I)V
    .locals 21
    .param p1, "unusedResult"    # I

    .prologue
    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 2937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2942
    .local v14, "pkg":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "late opComplete; curPkg = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2943
    return-void

    .line 2938
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v14, "[none]"

    .restart local v14    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 2946
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2947
    .local v15, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 2948
    .local v10, "filepos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 2952
    .local v8, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_a

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v18, v0

    .line 2955
    const/high16 v19, 0x10000000

    .line 2954
    invoke-static/range {v18 .. v19}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 2956
    .local v16, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v9, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2958
    .local v9, "in":Landroid/app/backup/BackupDataInput;
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2959
    invoke-virtual {v9}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 2960
    .local v12, "key":Ljava/lang/String;
    if-eqz v12, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const v19, 0xff00

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Illegal backup key: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "illegal key "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2964
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    .line 2965
    const-string/jumbo v19, "bad key"

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 2964
    const/16 v19, 0xb07

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2974
    if-eqz v16, :cond_2

    .line 2975
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2969
    :cond_2
    return-void

    .line 2971
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2973
    .end local v12    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v18

    .line 2974
    if-eqz v16, :cond_4

    .line 2975
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2973
    :cond_4
    throw v18
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2982
    .end local v9    # "in":Landroid/app/backup/BackupDataInput;
    .end local v16    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v5

    .line 2987
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v18, "PerformBackupTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to save widget state for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :try_start_5
    invoke-static {v8, v10, v11}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2998
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2999
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "operation complete"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3002
    const/4 v4, 0x0

    .line 3003
    .local v4, "backupData":Landroid/os/ParcelFileDescriptor;
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3005
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    .line 3006
    .local v17, "size":I
    if-lez v17, :cond_c

    .line 3007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v18, v0

    .line 3009
    const/high16 v19, 0x10000000

    .line 3008
    invoke-static/range {v18 .. v19}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 3010
    .local v4, "backupData":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "sending data to transport"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3019
    .end local v4    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "data delivered: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "finishing op on transport"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "finished: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3032
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3038
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    const/16 v19, 0xb08

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3055
    :goto_4
    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3059
    .end local v17    # "size":I
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v18, v0

    const/16 v19, -0x3ea

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 3063
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_10

    sget-object v13, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3071
    .local v13, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2929
    return-void

    .line 2974
    .end local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .restart local v9    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v16    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    if-eqz v16, :cond_a

    .line 2975
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2981
    .end local v9    # "in":Landroid/app/backup/BackupDataInput;
    .end local v16    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 2990
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 2991
    .local v7, "ee":Landroid/system/ErrnoException;
    const-string/jumbo v18, "PerformBackupTask"

    const-string/jumbo v19, "Unable to roll back!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3024
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "ee":Landroid/system/ErrnoException;
    .restart local v17    # "size":I
    :cond_b
    :try_start_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v18, v0

    const/16 v19, -0x3ea

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 3025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "transport rejected package"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 3050
    .end local v17    # "size":I
    :catch_2
    move-exception v6

    .line 3051
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v18, "PerformBackupTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Transport error backing up "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3052
    const/16 v18, 0xb06

    move/from16 v0, v18

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3053
    const/16 v18, -0x3e8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3055
    if-eqz v4, :cond_7

    :try_start_b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .line 3029
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    .local v4, "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "size":I
    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "no data to send"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_3

    .line 3054
    .end local v4    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "size":I
    :catchall_1
    move-exception v18

    .line 3055
    if-eqz v4, :cond_d

    :try_start_d
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 3054
    :cond_d
    :goto_7
    throw v18

    .line 3040
    .restart local v17    # "size":I
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v18, v0

    const/16 v19, -0x3ea

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 3044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 3045
    const-string/jumbo v18, "Transport rejected"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3048
    :cond_f
    const/16 v18, 0xb06

    move/from16 v0, v18

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_4

    .line 3055
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .end local v5    # "e":Ljava/io/IOException;
    .end local v17    # "size":I
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 3063
    .end local v5    # "e":Ljava/io/IOException;
    :cond_10
    sget-object v13, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_6

    .line 3067
    .end local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3068
    sget-object v13, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_6
.end method

.method revertAndEndBackup()V
    .locals 7

    .prologue
    .line 3090
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "transport error; reverting"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3096
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 3101
    .local v0, "delay":J
    :goto_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    .line 3103
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 3104
    .local v3, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 3097
    .end local v0    # "delay":J
    .end local v3    # "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v4    # "request$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 3098
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v6, "Unable to contact transport for recommended backoff"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    const-wide/16 v0, 0x0

    .restart local v0    # "delay":J
    goto :goto_0

    .line 3088
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "request$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
